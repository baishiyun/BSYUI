# BSYUI
有没有希望写代码的时候像Masonry语法那样舒服简单，使用了连续的.语法。一直点点就可以了！BSYUI值一套针对常用控件的封装，支持链式编程，只需要继承自BSYUI中的控件，就可以实现啦！现在已经支持Cocoapods，希望对大家开发有帮助，也希望支持Star和Fork！



    BSYView *view  =[[BSYView alloc]init];
    view
    .bsy_borderWith(10)
    .bsy_cornerRadius(30)
    .bsy_masksToBounds(true)
    .bsy_backColor([UIColor whiteColor])
    .bsy_borderColor([UIColor blackColor])
    .bsy_Rect(CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height));
    [self.view addSubview:view];

