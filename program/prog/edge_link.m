
function [out]=edge_link(c,grads)



[row,col] = size(c);



c_link(row,col)=0;



% 0代表-22.5度至22.5度

% 1代表22.5度至67.5度

% 3代表-22.5度至-67.5度

% 2代表67.5度至90度以及-67.5度至-90度



% 一个简单二值图象闭合边界的轮廓跟踪算法很简单：首先按从上到下，

% 从左到右的顺序搜索，找到的第一个黑点一定是最左上方的边界点，记为A。

% 它的右，右下，下，左下四个邻点中至少有一个是边界点，记为B。

% 从开始B找起，按右，右上，上，左上，左，左下，下，右下的顺序找相邻点中的边界点C。

% 如果C就是A点，则表明已经转了一圈，程序结束。 否则从C点继续找，直到找到A为止。 

% 判断是不是边界点很容易：如果它的上下左右四个邻居都是黑点则不是边界点，否则是边界点。





for irow=3:row-2

    for jcol=3:col-2

       if c(irow,jcol)~=0

         A=c(irow,jcol);

         

       end %if

    end

end



out=c_link;