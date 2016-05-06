  NSSet

 NSSet到底什么类型，其实它和NSArray功能性质一样，用于存储对象，属于集合； NSSet  ， NSMutableSet类声明编程接口对象，无序的集合，在内存中存储方式是不连续的，不像NSArray（是有序的集合）类声明编程接口对象是有序集合，在内存中存储位置是连续的；

        NSSet和我们常用NSArry区别是：在搜索一个一个元素时NSSet比NSArray效率高，主要是它用到了一个算法hash(散列，也可直译为哈希)；开发文档中这样解释：You can use sets as an alternative to arrays when the order of elements isn’t important and performance in testing whether an object is contained in the set is a consideration—while arrays are ordered, testing for membership is slower than with sets.
比如你要存储元素A，一个hash算法直接就能直接找到A应该存储的位置；同样，当你要访问A时，一个hash过程就能找到A存储的位置。而对于NSArray，若想知道A到底在不在数组中，则需要便利整个数组，显然效率较低了；

       NSSet，NSArray都是类，只能添加cocoa对象，如果需要加入基本数据类型（int，float，BOOL，double等），需要将数据封装成NSNumber类型。

NSSet 常用方法总结
+(id)setWithObjects:obj1,obj2,...nil	使用一组对象创建新的集合
-(id)initWithObjects:obj1,obj2,....nil	使用一组对象初始化新分配的集合
-(NSUInteger)count	返回集合成员个数
-(BOOL)containsObject:obj	确定集合是否包含对象 obj
-(BOOL)member:obj	确定集合是否包含对象 obj
-(NSEnumerator*)objectEnumerator	返回集合中所有对象到一个 NSEnumerator 类型的对象
-(BOOL)isSubsetOfSet:nsset	判断集合是否是NSSet的子集
-(BOOL)intersectsSet:nsset	判断两个集合的交集是否至少存在一个元素
-(BOOL)isEqualToSet:nsset	判断两个集合是否相等


NSMutableSet 常用方法总结
-(id)setWithCapcity:size	创建一个有size大小的新集合
-(id)initWithCapcity:size	初始化一个新分配的集合，大小为size
-(void)addObject:obj	添加对象 obj 到集合中
-(void)removeobject:obj	从集合中删除对象 obj
-(void)removeAllObjects	删除集合中所有对象
-(void)unionSet:nsset	将nsset的所有元素添加到集合
-(void)minusSet:nsset	从集合中去掉所有的NSSet 的元素
-(void)interectSet:nsset	集合和NSSet 做交集运算