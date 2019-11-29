# ModelMaker

功能
==============
根据JSON生成对应数据结构的对象,便于后面的JSONDecoder来解析

特性
==============
- **轻量**: 遵循系统的Codable,用JSONDecoder或者Encoder编解码
- **支持嵌套**: Model持有Model的情况也能处理
- **key重定义**: 使用了CodingKeys来重定义Key,方便使用自定义字段名
- **关键字过滤**: 使用了CodingKeys来重定义Key,过滤掉关键字,或者用`xxx`来声明关键字,例如`default`
- **优化输出数据**: 重写了description和debugDescription,支持程序输出和控制台(lldb)输出,系统默认输出为<ModelMaker.AppDelegate: 0x600000008180> 这样不利于观察数据,优化后可以输出所有的字段和数值
- **全角标点自动识别**:如果输入了中文标点(全角)也不会报错,例如"，会转成","

使用方法
==============
https://github.com/songwentong/ModelMaker
