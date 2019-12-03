function initial() {

	new Vue({
		el : '#msg',
		data : {
			message : 'this is Vue.js sample!吼黑哈',
		}
	})
	new Vue({
		el : '.msg2',
		data : {
			message2 : '巨匠電腦!吼黑哈'
		}
	})
}

function initial2() {

	new Vue({
		el : '#msg',
		data : {
			message : '輸入文字以改變此處值。',
		},
		methods : {
			doAction : function() {
				var str = this.text1;
				this.message = '你輸入了：<font color="red" size="10">' + str + '</font>.';
			}
		}

	})
}