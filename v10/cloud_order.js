const template = document.getElementsByClassName("template")[0];
Vue.prototype.lang = window.lang;
new Vue({
  mounted() {
    window.addEventListener("message", (event) => this.handelIframeMsg(event));
  },
  created() {
    this.id = this.getQuery("pid");
    this.pos = this.getQuery("i");
    this.isUpdate = this.getQuery("i") !== null;
    if (this.isUpdate) {
      this.getBackConfig();
    } else {
      this.getConfig();
    }
  },
  data() {
    return {
      id: "",
      iframeUrl: "",
      jwt: "",
      pId: "",
      cartLoading: false,
      pos: "",
      isUpdate: false, // 是否是编辑状态
      preview: [],
      calcTotalPrice: 0.00,
      commonData: {}
    };
  },
  methods: {
    changeDataType (val) {
      return val ? Number(val) : ''
    },
    async getBackConfig() {
      try {
        const res = await loginFun({
          pid: this.id,
        });
        this.pId = res.data.data.upstream_pid;
        this.jwt = res.data.data.jwt;
        this.commonData = res.data.data.currency
        const bol = this.jwt ? 1 : 2; // 1 登录  2 未登录
        const result = await getBackParams({
          i: this.pos,
        });
        const config = result.data.data.edit.config_options
        // 处理后端返回的数据类型不同
        config.line_id = this.changeDataType(config.line_id)
        config.bw = this.changeDataType(config.bw)
        config.flow = this.changeDataType(config.flow)
        config.cpu = this.changeDataType(config.cpu)
        config.memory = this.changeDataType(config.memory)
        config.image_id = this.changeDataType(config.image_id)
        config.duration_id = this.changeDataType(config.duration_id)
        config.data_center_id = this.changeDataType(config.data_center_id)
        config.ssh_key_id = this.changeDataType(config.ssh_key_id)
        config.auto_renew = this.changeDataType(config.auto_renew)
        config.system_disk.size = this.changeDataType(config.system_disk.size)
        config.cloudIndex = this.changeDataType(config.cloudIndex)
        config.curImage = this.changeDataType(config.curImage)
        config.curImageId = this.changeDataType(config.curImageId)

        const obj = {
          config_options: config,
          customfield: result.data.data.edit.customfield,
          position: this.pos,
          qty: result.data.data.edit.qty * 1,
        };
        const postData = {
          type: "iframeFin",
          product_information: obj,
        };
        const obj_info = JSON.stringify(obj)
        this.iframeUrl = `${res.data.data.url}/goods_iframe.htm?id=${this.pId}&finance_login=${bol}&change=true&product_information=${encodeURIComponent(obj_info)}`;

        // setTimeout(() => {
        //   this.$refs.Iframe.contentWindow.postMessage(postData, "*");
        // }, 1000)

        // sessionStorage.setItem("product_information", JSON.stringify(obj));

      } catch (error) {
        console.log("error", error);
      }
    },
    async handelIframeMsg(e) {
      try {
        const { type, params } = e.data;
        // 添加/修改购物车
        if (type === "iframeBuy") {
          params.product_id = this.id;
          this.cartLoading = true;
          if (!this.isUpdate) {
            this.handlerAddCart(params)
          } else {
            this.handlerUpdateCart(params)
          }
        }
        // 实时计算价格
        if (type === 'calcPrice') {
          params.id = this.id
          this.handlerPrice(params)
        }
      } catch (error) {
        this.cartLoading = false;
        this.$message.error(error.data.msg);
      }
    },
    // 计算总价
    async handlerPrice (params) {
      try {
        const res = await financeCalc(params)
        this.calcTotalPrice = (res.data.data.price * 1).toFixed(2)
        this.preview = res.data.data.preview
      } catch (error) {
        this.$message.error(error.data.msg);
      }
    },
    // 加入购物车
    async handlerAddCart(params) {
      try {
        const res = await addCart(params);
        if (res.data.status === 200) {
          setTimeout(() => {
            this.$message.success(res.data.msg);
            this.cartLoading = false;
            location.href = "cart?action=viewcart";
          }, 300);
        }
      } catch (error) {}
    },
    // 编辑购物车
    async handlerUpdateCart(params) {
      try {
        params.i = this.pos
        const res = await updateCart(params);
        if (res.data.status === 200) {
          setTimeout(() => {
            this.$message.success(res.data.msg);
            this.cartLoading = false;
            location.href = "cart?action=viewcart";
          }, 300);
        }
      } catch (error) {}
    },
    goCart() {
      const postData = {
        type: "iframeBuy",
      };
      this.$refs.Iframe.contentWindow.postMessage(postData, "*");
    },
    async getConfig() {
      try {
        const res = await loginFun({
          pid: this.id,
        });
        this.pId = res.data.data.upstream_pid;
        this.jwt = res.data.data.jwt;
        this.commonData = res.data.data.currency
        const bol = this.jwt ? 1 : 2; // 1 登录  2 未登录
        this.iframeUrl = `${res.data.data.url}/goods_iframe.htm?id=${this.pId}&finance_login=${bol}`;
      } catch (error) {
        console.log("error", error);
      }
    },
    getQuery(name) {
      const reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)", "i");
      const r = window.location.search.substr(1).match(reg);
      if (r != null) return decodeURI(r[2]);
      return null;
    },
  },
}).$mount(template);
