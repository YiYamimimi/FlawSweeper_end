# FlawSweeper_end
### 1. 为了减少耦合度，采用前后端分离架构；前端基于 Vue.js 实现，后端由 SpringBoot 重构。
   [前端项目](https://github.com/YiYamimimi/FlawSweeper_front/tree/master)
###  2. 为了提高前后端的数据交互，封装 ResultVO 实现统一返回结果，并采用 json 格式传输数据。
### 3. 使用 RESTful 风格设计和实现 API，使数据交互接口可读性高可扩展强。
### 4. 在登录认证上，为了减轻服务器压力，从使用 Session 机制，转为基于 Token 的认证方式。
####  Session 机制:
1. 服务端验证后，创建一个 Session 信息，Session 是存储在服务器端的，并且将 SessionID 存到 cookie，Cookie 是存储在客户端的
2. 在下次发起请求时，自动带上 cookie 信息，服务端通过 cookie 获取 Session 信息进行校验；（若用户禁用cookie，会导致切换页面后登录失效。如果是 APP ，使用 cookie 的情况下就不能用了）
对于session机制，服务端验证后，会创建一个 Session并将其存储在服务器端，对服务器会造成一定的压力，所以从使用Session机制，转为基于Token的认证方式。
#### Token的认证方式:
1. 服务端验证后，创建一个 token返回给客户端，并将其存储在本地，当下次发送请求时带上token到后端进行验证
对于token的认证方式，服务端创建的token是存储在本地，在一定程度上减轻了服务器的压力，但对于每次的请求都会去数据库里查找token并进行验证。
### 5. 为了保证数据安全，进行重定向以及采用基于 Spring MVC 的 HandlerInterceptor 实现简单的校验逻辑
### 6. 采用多元存储优化数据的读写性能。使用关系型数据库 MySQL 存储结构化数据信息，实现数据的持久化存储和复杂查询
操作；使用非关系型数据库 Redis 缓存技术优化；选用七牛云对象存储服务存储图片资源；
