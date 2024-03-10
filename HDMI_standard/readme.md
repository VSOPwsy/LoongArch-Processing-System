# HDMI 显示

# 1 HDMI显示

代码在hdmi_standard 中，上板测试可以显示彩条

## 1.1 代码设计
![Untitled](https://github.com/VSOPwsy/LoongArch-Processing-System/assets/138192626/75a980a5-8d28-47d9-bfb9-55c34218f6a8)

时钟部分：系统需要两个时钟，一个是视频像素时钟pclk，另一个是视频像素时钟的5倍（PLL\CLK_DIV）

dvi_transmitter_top: 将RGB888转化为TDMS差分输出

video_driver: 输入像素点RGB888, 输出行同步信号、场同步信号、数据使能，RGB信号（给dvi）

video_display: 根据当前显示的坐标位置判断颜色（本例程显示一个彩条）

## 1.2 引脚分配
![Untitled (1)](https://github.com/VSOPwsy/LoongArch-Processing-System/assets/138192626/b4bc7fa5-f6e5-4b9b-a1a3-de6a772e7489)
![Untitled (2)](https://github.com/VSOPwsy/LoongArch-Processing-System/assets/138192626/4b35f387-f41b-433f-9757-3df2ede56cc2)
（具体引脚找对应的板子，TDMS写正方向信号应该会自动补全差分输出的另一个）

# 2 AXI_Stream接收图像数据并完整显示

全部代码在hdmi_standard_readfromfifo中
## 2.1 vivado 生成AXI代码 & 补充FIFO

根据Xilinx ip核，生成AXI_Stream 代码。接收位宽32，读出位宽24。

从异步FIFO中读数据，格雷码避免CDC。

用AXI_generator可以上板显示全白色。未防止综合出DFF，修改成4个FIFO，每个FIFO位宽8，深度960，读出逻辑也做了对应修改。
