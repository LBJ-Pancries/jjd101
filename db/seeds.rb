u = User.new
u.email = "admin@test.com"
u.password = "123456"
u.password_confirmation = "123456"
u.is_admin = true
u.save
puts "管理员创建"

Product.create(title: "A1", code: "54平米", description: "2、3、5、6#楼一层,水磨石面积：27.84，木地板面积：15.21+3.3", quantity: "8")
Product.create(title: "A2", code: "51平米", description: "2、3、5#楼二层", quantity: "6")
Product.create(title: "A3", code: "40平米", description: "2、3、5#楼三层", quantity: "6")
Product.create(title: "C1", code: "87平米", description: "6#楼二层", quantity: "2")
Product.create(title: "B1", code: "50平米", description: "1、4#楼一层，水磨石面积：20.86，木地板面积：17.62", quantity: "4")
Product.create(title: "B2", code: "52平米", description: "1、4#楼二层，水磨石面积：25.86+8.05，木地板面积：12.47", quantity: "8")
Product.create(title: "B3", code: "82平米", description: "1、4#楼三层，水磨石面积：32.4+17.19，木地板面积：28.37", quantity: "4")
Product.create(title: "油烟机", description: "方太", quantity: "38")
Product.create(title: "热水器", description: "林内", quantity: "38")
Product.create(title: "空调", description: "格力", quantity: "38")
Product.create(title: "燃气灶", description: "方太", quantity: "38")
Product.create(title: "浴霸", code:"QDP6326C", description: "奥普", quantity: "40")
Product.create(title: "马桶", code: "K-3722T-0/4027T-0", description: "圣菲拉尔“五级旋风”连体坐便器，坑距：305，4.8L冲水，产地：佛山，颜色：白，尺寸：743*519*610mm", quantity: "39", price: "2280")
Product.create(title: "马桶", code: "K-5171T-C-0", description: "爱黛尔“4.2升五级旋风绿能”连体坐便器（305mm坑距)，规格：720*411*694mm，坑距：305mm/400mm，产地：佛山", quantity: "1", price: "2999")
Product.create(title: "龙头", code: "K-10861T-4-CP", description: "欣嘉丽单把碗盆龙头，K-10861T-4-CP,规格：伸长130mm，高：240mm，产地：北京", quantity: "1", price: "780")
Product.create(title: "龙头", code: "K-10860T-4-CP", description: "欣嘉丽单把脸盆龙头,规格：伸长100mm，高：99mm，产地：北京", quantity: "8", price: "1039")
Product.create(title: "龙头", code: "K-5241T-4-CP", description: "齐悦高把脸盆龙头,规格：125mm，高：178mm，产地：北京", quantity: "29", price: "920")
Product.create(title: "台盆", code: "K-5373T-0", description: "拂朗23长方形时尚脸盆,规格：537*370*203，产地：佛山", quantity: "14", price: "2330")
Product.create(title: "台盆", code: "K-9220-0", description: "时尚脸盆,规格：537*370*203mm，产地：佛山", quantity: "16")
Product.create(title: "台盆", code: "K-11479T-VC1-0", description: "拂朗半嵌入式脸盆,规格：外尺寸578*462*172*126，内尺寸548*335，产地：佛山", quantity: "8")
Product.create(title: "淋浴柱", code: "K-99742-9-CP", description: "齐悦三出水淋浴柱,规格：1082-1282mm，间距：150+—15mm，产地：北京", quantity: "36")
Product.create(title: "花洒", code: "K-7686T-4-CP", description: "齐悦挂墙式浴缸花洒龙头,规格：165mm，间距：150+—15mm，产地：北京", quantity: "2", price: "2330")
Product.create(title: "配件", code: "JD-700", description: "马桶三件套", quantity: "38")
Product.create(title: "配件", code: "JD-423", description: "龙头角阀", quantity: "38")
Product.create(title: "配件", code: "JD-105", description: "台盆S/P弯", quantity: "38")
Product.create(title: "单联单控开关", code: "S2600-1011", description: "西蒙", quantity: "16")
Product.create(title: "单联双控开关", code: "S2600-1012", description: "西蒙", quantity: "2")
Product.create(title: "三联单控开关", code: "S2600-1031", description: "西蒙", quantity: "9")
Product.create(title: "双联单控开关", code: "S2600-1021", description: "西蒙", quantity: "24")
Product.create(title: "双联双控开关", code: "S2600-1022", description: "西蒙", quantity: "29")
Product.create(title: "三联双控开关", code: "S2600-1032", description: "西蒙", quantity: "1")
Product.create(title: "五孔插座", code: "S2600-1084", description: "西蒙", quantity: "285")
Product.create(title: "网络+电话插座", code: "S2100-5229", description: "西蒙", quantity: "23")
Product.create(title: "一位电视插座", code: "S2600-5111", description: "西蒙", quantity: "5")
Product.create(title: "二位网络插座", code: "S0400-1223", description: "西蒙", quantity: "1")
Product.create(title: "五孔地插", code: "S0405-1201", description: "西蒙", quantity: "2")
Product.create(title: "LED灯带", code: "N0704-0001", description: "西蒙", quantity: "28")

puts "商品创建完"
