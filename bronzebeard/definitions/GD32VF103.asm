# definitions related to the GigaDevice GD32VF103 chip
#
# datasheet: https://www.gigadevice.com/datasheet/gd32vf103xxxx-datasheet/
# manual:    https://gd32mcu.21ic.com/data/documents/shujushouce/GD32VF103_User_Manual_EN_V1.2.pdf

# GD32VF103 Manual: Section 5.2.1
# MTIME info is mostly absent from both the datasheet and
# the manual. The manual does mention that the SysTick timer
# (an ARM concept held over from search-and-replace) is clocked
# with the AHB clock (HCLK) divided by 4.

# These addrs and offsets were found in a forum post:
# https://en.bbs.sipeed.com/t/topic/1759
MTIME_BASE_ADDR = 0xd1000000
MTIME_LO_OFFSET = 0x00
MTIME_HI_OFFSET = 0x04

MTIMECMP_BASE_ADDR = 0xd1000000
MTIMECMP_LO_OFFSET = 0x08
MTIMECMP_HO_OFFSET = 0x0c

# GD32VF103 Manual: Section 5.3
RCU_BASE_ADDR = 0x40021000

# GD32VF103 Manual: Section 5.3.1
RCU_CTL_OFFSET = 0x00

RCU_CTL_PLL2STB_BIT = 29
RCU_CTL_PLL2EN_BIT  = 28
RCU_CTL_PLL1STB_BIT = 27
RCU_CTL_PLL1EN_BIT  = 26
RCU_CTL_PLLSTB_BIT  = 25
RCU_CTL_PLLEN_BIT   = 24

RCU_CTL_PLL2STB = (1 << RCU_CTL_PLL2STB_BIT)
RCU_CTL_PLL2EN  = (1 << RCU_CTL_PLL2EN_BIT)
RCU_CTL_PLL1STB = (1 << RCU_CTL_PLL1STB_BIT)
RCU_CTL_PLL1EN  = (1 << RCU_CTL_PLL1EN_BIT)
RCU_CTL_PLLSTB  = (1 << RCU_CTL_PLLSTB_BIT)
RCU_CTL_PLLEN   = (1 << RCU_CTL_PLLEN_BIT)

# GD32VF103 Manual: Section 5.3.2
RCU_CFG0_OFFSET = 0x04

RCU_CFG0_PREDV0_LSB_BIT = 17
RCU_CFG0_PLLSEL_BIT     = 16

RCU_CFG0_PREDV0_LSB = (1 << RCU_CFG0_PREDV0_LSB_BIT)
RCU_CFG0_PLLSEL     = (1 << RCU_CFG0_PLLSEL_BIT)

RCU_CFG0_PLLMF_MASK     = 0x203c0000
RCU_CFG0_ADCPSC_MASK    = 0x1000c000
RCU_CFG0_CKOUT0SEL_MASK = 0x0f000000
RCU_CFG0_USBFSPSC_MASK  = 0x00c00000
RCU_CFG0_ADCPSC_MASK    = 0x0000c000
RCU_CFG0_APB2PSC_MASK   = 0x00003800
RCU_CFG0_APB1PSC_MASK   = 0x00000700
RCU_CFG0_AHBPSC_MASK    = 0x000000f0
RCU_CFG0_SCSS_MASK      = 0x0000000c
RCU_CFG0_SCS_MASK       = 0x00000003

RCU_CFG0_PLLMF_4_POS    = 29
RCU_CFG0_ADCPSC_2_POS   = 28
RCU_CFG0_CKOUT0SEL_POS  = 24
RCU_CFG0_USBFSPSC_POS   = 22
RCU_CFG0_PLLMF_3_0_POS  = 18
RCU_CFG0_ADCPSC_1_0_POS = 14
RCU_CFG0_APB2PSC_POS    = 11
RCU_CFG0_APB1PSC_POS    = 8
RCU_CFG0_AHBPSC_POS     = 4
RCU_CFG0_SCSS_POS       = 2
RCU_CFG0_SCS_POS        = 0

RCU_CFG0_CKOUT0SEL_NONE      = (0b0000 << RCU_CFG0_CKOUT0SEL_POS)
RCU_CFG0_CKOUT0SEL_SYS       = (0b0100 << RCU_CFG0_CKOUT0SEL_POS)
RCU_CFG0_CKOUT0SEL_IRC8M     = (0b0101 << RCU_CFG0_CKOUT0SEL_POS)
RCU_CFG0_CKOUT0SEL_HXTAL     = (0b0110 << RCU_CFG0_CKOUT0SEL_POS)
RCU_CFG0_CKOUT0SEL_PLL_DIV2  = (0b0111 << RCU_CFG0_CKOUT0SEL_POS)
RCU_CFG0_CKOUT0SEL_PLL1      = (0b1000 << RCU_CFG0_CKOUT0SEL_POS)
RCU_CFG0_CKOUT0SEL_PLL2_DIV2 = (0b1001 << RCU_CFG0_CKOUT0SEL_POS)
RCU_CFG0_CKOUT0SEL_EXT1      = (0b1010 << RCU_CFG0_CKOUT0SEL_POS)
RCU_CFG0_CKOUT0SEL_PLL2      = (0b1011 << RCU_CFG0_CKOUT0SEL_POS)

RCU_CFG0_USBFSPSC_DIV15 = (0b00 << RCU_CFG0_USBFSPSC_POS)
RCU_CFG0_USBFSPSC_DIV1  = (0b01 << RCU_CFG0_USBFSPSC_POS)
RCU_CFG0_USBFSPSC_DIV25 = (0b10 << RCU_CFG0_USBFSPSC_POS)
RCU_CFG0_USBFSPSC_DIV2  = (0b11 << RCU_CFG0_USBFSPSC_POS)

RCU_CFG0_PLLMF_MUL2  = (((0b00000 >> 4) & 0b1) << RCU_CFG0_PLLMF_4_POS) | ((0b00000 & 0b1111) << RCU_CFG0_PLLMF_3_0_POS)
RCU_CFG0_PLLMF_MUL3  = (((0b00001 >> 4) & 0b1) << RCU_CFG0_PLLMF_4_POS) | ((0b00001 & 0b1111) << RCU_CFG0_PLLMF_3_0_POS)
RCU_CFG0_PLLMF_MUL4  = (((0b00010 >> 4) & 0b1) << RCU_CFG0_PLLMF_4_POS) | ((0b00010 & 0b1111) << RCU_CFG0_PLLMF_3_0_POS)
RCU_CFG0_PLLMF_MUL5  = (((0b00011 >> 4) & 0b1) << RCU_CFG0_PLLMF_4_POS) | ((0b00011 & 0b1111) << RCU_CFG0_PLLMF_3_0_POS)
RCU_CFG0_PLLMF_MUL6  = (((0b00100 >> 4) & 0b1) << RCU_CFG0_PLLMF_4_POS) | ((0b00100 & 0b1111) << RCU_CFG0_PLLMF_3_0_POS)
RCU_CFG0_PLLMF_MUL7  = (((0b00101 >> 4) & 0b1) << RCU_CFG0_PLLMF_4_POS) | ((0b00101 & 0b1111) << RCU_CFG0_PLLMF_3_0_POS)
RCU_CFG0_PLLMF_MUL8  = (((0b00110 >> 4) & 0b1) << RCU_CFG0_PLLMF_4_POS) | ((0b00110 & 0b1111) << RCU_CFG0_PLLMF_3_0_POS)
RCU_CFG0_PLLMF_MUL9  = (((0b00111 >> 4) & 0b1) << RCU_CFG0_PLLMF_4_POS) | ((0b00111 & 0b1111) << RCU_CFG0_PLLMF_3_0_POS)
RCU_CFG0_PLLMF_MUL10 = (((0b01000 >> 4) & 0b1) << RCU_CFG0_PLLMF_4_POS) | ((0b01000 & 0b1111) << RCU_CFG0_PLLMF_3_0_POS)
RCU_CFG0_PLLMF_MUL11 = (((0b01001 >> 4) & 0b1) << RCU_CFG0_PLLMF_4_POS) | ((0b01001 & 0b1111) << RCU_CFG0_PLLMF_3_0_POS)
RCU_CFG0_PLLMF_MUL12 = (((0b01010 >> 4) & 0b1) << RCU_CFG0_PLLMF_4_POS) | ((0b01010 & 0b1111) << RCU_CFG0_PLLMF_3_0_POS)
RCU_CFG0_PLLMF_MUL13 = (((0b01011 >> 4) & 0b1) << RCU_CFG0_PLLMF_4_POS) | ((0b01011 & 0b1111) << RCU_CFG0_PLLMF_3_0_POS)
RCU_CFG0_PLLMF_MUL14 = (((0b01100 >> 4) & 0b1) << RCU_CFG0_PLLMF_4_POS) | ((0b01100 & 0b1111) << RCU_CFG0_PLLMF_3_0_POS)
RCU_CFG0_PLLMF_MUL65 = (((0b01101 >> 4) & 0b1) << RCU_CFG0_PLLMF_4_POS) | ((0b01101 & 0b1111) << RCU_CFG0_PLLMF_3_0_POS)
RCU_CFG0_PLLMF_MUL16 = (((0b01110 >> 4) & 0b1) << RCU_CFG0_PLLMF_4_POS) | ((0b01110 & 0b1111) << RCU_CFG0_PLLMF_3_0_POS)
RCU_CFG0_PLLMF_MUL17 = (((0b10000 >> 4) & 0b1) << RCU_CFG0_PLLMF_4_POS) | ((0b10000 & 0b1111) << RCU_CFG0_PLLMF_3_0_POS)
RCU_CFG0_PLLMF_MUL18 = (((0b10001 >> 4) & 0b1) << RCU_CFG0_PLLMF_4_POS) | ((0b10001 & 0b1111) << RCU_CFG0_PLLMF_3_0_POS)
RCU_CFG0_PLLMF_MUL19 = (((0b10010 >> 4) & 0b1) << RCU_CFG0_PLLMF_4_POS) | ((0b10010 & 0b1111) << RCU_CFG0_PLLMF_3_0_POS)
RCU_CFG0_PLLMF_MUL20 = (((0b10011 >> 4) & 0b1) << RCU_CFG0_PLLMF_4_POS) | ((0b10011 & 0b1111) << RCU_CFG0_PLLMF_3_0_POS)
RCU_CFG0_PLLMF_MUL21 = (((0b10100 >> 4) & 0b1) << RCU_CFG0_PLLMF_4_POS) | ((0b10100 & 0b1111) << RCU_CFG0_PLLMF_3_0_POS)
RCU_CFG0_PLLMF_MUL22 = (((0b10101 >> 4) & 0b1) << RCU_CFG0_PLLMF_4_POS) | ((0b10101 & 0b1111) << RCU_CFG0_PLLMF_3_0_POS)
RCU_CFG0_PLLMF_MUL23 = (((0b10110 >> 4) & 0b1) << RCU_CFG0_PLLMF_4_POS) | ((0b10110 & 0b1111) << RCU_CFG0_PLLMF_3_0_POS)
RCU_CFG0_PLLMF_MUL24 = (((0b10111 >> 4) & 0b1) << RCU_CFG0_PLLMF_4_POS) | ((0b10111 & 0b1111) << RCU_CFG0_PLLMF_3_0_POS)
RCU_CFG0_PLLMF_MUL25 = (((0b11000 >> 4) & 0b1) << RCU_CFG0_PLLMF_4_POS) | ((0b11000 & 0b1111) << RCU_CFG0_PLLMF_3_0_POS)
RCU_CFG0_PLLMF_MUL26 = (((0b11001 >> 4) & 0b1) << RCU_CFG0_PLLMF_4_POS) | ((0b11001 & 0b1111) << RCU_CFG0_PLLMF_3_0_POS)
RCU_CFG0_PLLMF_MUL27 = (((0b11010 >> 4) & 0b1) << RCU_CFG0_PLLMF_4_POS) | ((0b11010 & 0b1111) << RCU_CFG0_PLLMF_3_0_POS)
RCU_CFG0_PLLMF_MUL28 = (((0b11011 >> 4) & 0b1) << RCU_CFG0_PLLMF_4_POS) | ((0b11011 & 0b1111) << RCU_CFG0_PLLMF_3_0_POS)
RCU_CFG0_PLLMF_MUL29 = (((0b11100 >> 4) & 0b1) << RCU_CFG0_PLLMF_4_POS) | ((0b11100 & 0b1111) << RCU_CFG0_PLLMF_3_0_POS)
RCU_CFG0_PLLMF_MUL30 = (((0b11101 >> 4) & 0b1) << RCU_CFG0_PLLMF_4_POS) | ((0b11101 & 0b1111) << RCU_CFG0_PLLMF_3_0_POS)
RCU_CFG0_PLLMF_MUL31 = (((0b11110 >> 4) & 0b1) << RCU_CFG0_PLLMF_4_POS) | ((0b11110 & 0b1111) << RCU_CFG0_PLLMF_3_0_POS)
RCU_CFG0_PLLMF_MUL32 = (((0b11111 >> 4) & 0b1) << RCU_CFG0_PLLMF_4_POS) | ((0b11111 & 0b1111) << RCU_CFG0_PLLMF_3_0_POS)

RCU_CFG0_ADCPSC_DIV2  = (((0b000 >> 2) & 0b1) << RCU_CFG0_ADCPSC_2_POS) | ((0b000 & 0b11) << RCU_CFG0_ADCPSC_1_0_POS)
RCU_CFG0_ADCPSC_DIV4  = (((0b001 >> 2) & 0b1) << RCU_CFG0_ADCPSC_2_POS) | ((0b001 & 0b11) << RCU_CFG0_ADCPSC_1_0_POS)
RCU_CFG0_ADCPSC_DIV6  = (((0b010 >> 2) & 0b1) << RCU_CFG0_ADCPSC_2_POS) | ((0b010 & 0b11) << RCU_CFG0_ADCPSC_1_0_POS)
RCU_CFG0_ADCPSC_DIV8  = (((0b011 >> 2) & 0b1) << RCU_CFG0_ADCPSC_2_POS) | ((0b011 & 0b11) << RCU_CFG0_ADCPSC_1_0_POS)
RCU_CFG0_ADCPSC_DIV12 = (((0b101 >> 2) & 0b1) << RCU_CFG0_ADCPSC_2_POS) | ((0b101 & 0b11) << RCU_CFG0_ADCPSC_1_0_POS)
RCU_CFG0_ADCPSC_DIV16 = (((0b111 >> 2) & 0b1) << RCU_CFG0_ADCPSC_2_POS) | ((0b111 & 0b11) << RCU_CFG0_ADCPSC_1_0_POS)

RCU_CFG0_APB2PSC_DIV1  = (0b000 << RCU_CFG0_APB2PSC_POS)
RCU_CFG0_APB2PSC_DIV2  = (0b100 << RCU_CFG0_APB2PSC_POS)
RCU_CFG0_APB2PSC_DIV4  = (0b101 << RCU_CFG0_APB2PSC_POS)
RCU_CFG0_APB2PSC_DIV8  = (0b110 << RCU_CFG0_APB2PSC_POS)
RCU_CFG0_APB2PSC_DIV16 = (0b111 << RCU_CFG0_APB2PSC_POS)

RCU_CFG0_APB1PSC_DIV1  = (0b000 << RCU_CFG0_APB1PSC_POS)
RCU_CFG0_APB1PSC_DIV2  = (0b100 << RCU_CFG0_APB1PSC_POS)
RCU_CFG0_APB1PSC_DIV4  = (0b101 << RCU_CFG0_APB1PSC_POS)
RCU_CFG0_APB1PSC_DIV8  = (0b110 << RCU_CFG0_APB1PSC_POS)
RCU_CFG0_APB1PSC_DIV16 = (0b111 << RCU_CFG0_APB1PSC_POS)

RCU_CFG0_AHBPSC_DIV1   = (0b0000 << RCU_CFG0_AHBPSC_POS)
RCU_CFG0_AHBPSC_DIV2   = (0b1000 << RCU_CFG0_AHBPSC_POS)
RCU_CFG0_AHBPSC_DIV4   = (0b1001 << RCU_CFG0_AHBPSC_POS)
RCU_CFG0_AHBPSC_DIV8   = (0b1010 << RCU_CFG0_AHBPSC_POS)
RCU_CFG0_AHBPSC_DIV16  = (0b1011 << RCU_CFG0_AHBPSC_POS)
RCU_CFG0_AHBPSC_DIV64  = (0b1100 << RCU_CFG0_AHBPSC_POS)
RCU_CFG0_AHBPSC_DIV128 = (0b1101 << RCU_CFG0_AHBPSC_POS)
RCU_CFG0_AHBPSC_DIV256 = (0b1110 << RCU_CFG0_AHBPSC_POS)
RCU_CFG0_AHBPSC_DIV512 = (0b1111 << RCU_CFG0_AHBPSC_POS)

RCU_CFG0_SCSS_IRC8M = (0b00 << RCU_CFG0_SCSS_POS)
RCU_CFG0_SCSS_HXTAL = (0b01 << RCU_CFG0_SCSS_POS)
RCU_CFG0_SCSS_PLL   = (0b10 << RCU_CFG0_SCSS_POS)

RCU_CFG0_SCS_IRC8M = (0b00 << RCU_CFG0_SCS_POS)
RCU_CFG0_SCS_HXTAL = (0b01 << RCU_CFG0_SCS_POS)
RCU_CFG0_SCS_PLL   = (0b10 << RCU_CFG0_SCS_POS)

# GD32VF103 Manual: Section 5.3.3
RCU_INT_OFFSET = 0x08

# GD32VF103 Manual: Section 5.3.4
RCU_APB2RST_OFFSET = 0x0c

RCU_APB2RST_USART0RST_BIT = 14
RCU_APB2RST_SPI0RST_BIT   = 12
RCU_APB2RST_TIMER0RST_BIT = 11

RCU_APB2RST_USART0RST = (1 << RCU_APB2RST_USART0RST_BIT)
RCU_APB2RST_SPI0RST   = (1 << RCU_APB2RST_SPI0RST_BIT)
RCU_APB2RST_TIMER0RST = (1 << RCU_APB2RST_TIMER0RST_BIT)

# GD32VF103 Manual: Section 5.3.5
RCU_APB1RST_OFFSET = 0x10

# GD32VF103 Manual: Section 5.3.6
RCU_AHBEN_OFFSET = 0x14

# GD32VF103 Manual: Section 5.3.7
RCU_APB2EN_OFFSET = 0x18

RCU_APB2EN_USART0EN_BIT = 14
RCU_APB2EN_SPI0EN_BIT   = 12
RCU_APB2EN_TIMER0EN_BIT = 11
RCU_APB2EN_ADC1EN_BIT   = 10
RCU_APB2EN_ADC0EN_BIT   = 9
RCU_APB2EN_PEEN_BIT     = 6
RCU_APB2EN_PDEN_BIT     = 5
RCU_APB2EN_PCEN_BIT     = 4
RCU_APB2EN_PBEN_BIT     = 3
RCU_APB2EN_PAEN_BIT     = 2
RCU_APB2EN_AFEN_BIT     = 0

RCU_APB2EN_USART0EN = (1 << RCU_APB2EN_USART0EN_BIT)
RCU_APB2EN_SPI0EN   = (1 << RCU_APB2EN_SPI0EN_BIT)
RCU_APB2EN_TIMER0EN = (1 << RCU_APB2EN_TIMER0EN_BIT)
RCU_APB2EN_ADC1EN   = (1 << RCU_APB2EN_ADC1EN_BIT)
RCU_APB2EN_ADC0EN   = (1 << RCU_APB2EN_ADC0EN_BIT)
RCU_APB2EN_PEEN     = (1 << RCU_APB2EN_PEEN_BIT)
RCU_APB2EN_PDEN     = (1 << RCU_APB2EN_PDEN_BIT)
RCU_APB2EN_PCEN     = (1 << RCU_APB2EN_PCEN_BIT)
RCU_APB2EN_PBEN     = (1 << RCU_APB2EN_PBEN_BIT)
RCU_APB2EN_PAEN     = (1 << RCU_APB2EN_PAEN_BIT)
RCU_APB2EN_AFEN     = (1 << RCU_APB2EN_AFEN_BIT)

# GD32VF103 Manual: Section 5.3.8
RCU_APB1EN_OFFSET = 0x1c

# GD32VF103 Manual: Section 5.3.9
RCU_BDCTL_OFFSET = 0x20

# GD32VF103 Manual: Section 5.3.10
RCU_RSTSCK_OFFSET = 0x24

# GD32VF103 Manual: Section 5.3.11
RCU_AHBRST_OFFSET = 0x28

# GD32VF103 Manual: Section 5.3.12
RCU_CFG1_OFFSET = 0x2c

# GD32VF103 Manual: Section 5.3.13
RCU_DSV_OFFSET = 0x34

# GD32VF103 Manual: Section 7.3
GPIO_MODE_IN        = 0b00
GPIO_MODE_OUT_10MHZ = 0b01
GPIO_MODE_OUT_2MHZ  = 0b10
GPIO_MODE_OUT_50MHZ = 0b11

GPIO_CTL_IN_ANALOG   = (0b00 << 2)
GPIO_CTL_IN_FLOATING = (0b01 << 2)
GPIO_CTL_IN_PULL     = (0b10 << 2)

GPIO_CTL_OUT_PUSH_PULL      = (0b00 << 2)
GPIO_CTL_OUT_OPEN_DRAIN     = (0b01 << 2)
GPIO_CTL_OUT_ALT_PUSH_PULL  = (0b10 << 2)
GPIO_CTL_OUT_ALT_OPEN_DRAIN = (0b11 << 2)

# combined configs: ((CTL[1:0] << 2) | MD[1:0])
GPIO_CONFIG_IN_ANALOG   = 0b0000  # analog input
GPIO_CONFIG_PP_10MHZ    = 0b0001  # push-pull output, max speed 10MHz
GPIO_CONFIG_PP_2MHZ     = 0b0010  # push-pull output, max speed 2MHz
GPIO_CONFIG_PP_50MHZ    = 0b0011  # push-pull output, max speed 50MHz
GPIO_CONFIG_IN_FLOAT    = 0b0100  # floating input
GPIO_CONFIG_OD_10MHZ    = 0b0101  # open-drain output, max speed 10MHz
GPIO_CONFIG_OD_2MHZ     = 0b0110  # open-drain output, max speed 2MHz
GPIO_CONFIG_OD_50MHZ    = 0b0111  # open-drain output, max speed 50MHz
GPIO_CONFIG_IN_PULL     = 0b1000  # input with pull up/down
GPIO_CONFIG_AF_PP_10MHZ = 0b1001  # alternate function push-pull, max speed 10MHz
GPIO_CONFIG_AF_PP_2MHZ  = 0b1010  # alternate function push-pull, max speed 2MHz
GPIO_CONFIG_AF_PP_50MHZ = 0b1011  # alternate function push-pull, max speed 50MHz
#                       = 0b1100  # reserved
GPIO_CONFIG_AF_OD_10MHZ = 0b1101  # alternate function open-drain, max speed 10MHz
GPIO_CONFIG_AF_OD_2MHZ  = 0b1110  # alternate function open-drain, max speed 2MHz
GPIO_CONFIG_AF_OD_50MHZ = 0b1111  # alternate function open-drain, max speed

# GD32VF103 Manual: Section 7.5
AFIO_BASE_ADDR   = 0x40010000
GPIO_BASE_ADDR_A = 0x40010800
GPIO_BASE_ADDR_B = 0x40010c00
GPIO_BASE_ADDR_C = 0x40011000
GPIO_BASE_ADDR_D = 0x40011400
GPIO_BASE_ADDR_E = 0x40011800

# GD32VF103 Manual: Section 7.5.1
GPIO_CTL0_OFFSET  = 0x00

# GD32VF103 Manual: Section 7.5.2
GPIO_CTL1_OFFSET  = 0x04

# GD32VF103 Manual: Section 7.5.3
GPIO_ISTAT_OFFSET = 0x08

# GD32VF103 Manual: Section 7.5.4
GPIO_OCTL_OFFSET  = 0x0c

# GD32VF103 Manual: Section 7.5.5
GPIO_BOP_OFFSET   = 0x10

# GD32VF103 Manual: Section 7.5.6
GPIO_BC_OFFSET    = 0x14

# GD32VF103 Manual: Section 16.4
USART_BASE_ADDR_0 = 0x40013800

# GD32VF103 Manual: Section 16.4.1
USART_STAT_OFFSET = 0x00

USART_STAT_TBE_BIT  = 7
USART_STAT_RBNE_BIT = 5

USART_STAT_TBE  = (1 << USART_STAT_TBE_BIT)
USART_STAT_RBNE = (1 << USART_STAT_RBNE_BIT)

# GD32VF103 Manual: Section 16.4.2
USART_DATA_OFFSET = 0x04

# GD32VF103 Manual: Section 16.4.3
USART_BAUD_OFFSET = 0x08

# GD32VF103 Manual: Section 16.4.4
USART_CTL0_OFFSET = 0x0c

USART_CTL0_UEN_BIT = 13
USART_CTL0_TEN_BIT = 3
USART_CTL0_REN_BIT = 2

USART_CTL0_UEN = (1 << USART_CTL0_UEN_BIT)
USART_CTL0_TEN = (1 << USART_CTL0_TEN_BIT)
USART_CTL0_REN = (1 << USART_CTL0_REN_BIT)

# GD32VF103 Manual: Section 18.11
SPI0_BASE_ADDR = 0x40013000
SPI1_BASE_ADDR = 0x40003800
I2S1_BASE_ADDR = 0x40003800
SPI2_BASE_ADDR = 0x40003c00
I2S2_BASE_ADDR = 0x40003c00

# GD32VF103 Manual: Section 18.11.1
SPI_CTL0_OFFSET = 0x00

SPI_CTL0_BDEN_BIT    = 15
SPI_CTL0_BDOEN_BIT   = 14
SPI_CTL0_CRCEN_BIT   = 13
SPI_CTL0_CRCNT_BIT   = 12
SPI_CTL0_FF16_BIT    = 11
SPI_CTL0_RO_BIT      = 10
SPI_CTL0_SWNSSEN_BIT = 9
SPI_CTL0_SWNSS_BIT   = 8
SPI_CTL0_LF_BIT      = 7
SPI_CTL0_SPIEN_BIT   = 6
SPI_CTL0_MSTMOD_BIT  = 2
SPI_CTL0_CKPL_BIT    = 1
SPI_CTL0_CKPH_BIT    = 0

SPI_CTL0_BDEN    = (1 << SPI_CTL0_BDEN_BIT)
SPI_CTL0_BDOEN   = (1 << SPI_CTL0_BDOEN_BIT)
SPI_CTL0_CRCEN   = (1 << SPI_CTL0_CRCEN_BIT)
SPI_CTL0_CRCNT   = (1 << SPI_CTL0_CRCNT_BIT)
SPI_CTL0_FF16    = (1 << SPI_CTL0_FF16_BIT)
SPI_CTL0_RO      = (1 << SPI_CTL0_RO_BIT)
SPI_CTL0_SWNSSEN = (1 << SPI_CTL0_SWNSSEN_BIT)
SPI_CTL0_SWNSS   = (1 << SPI_CTL0_SWNSS_BIT)
SPI_CTL0_LF      = (1 << SPI_CTL0_LF_BIT)
SPI_CTL0_SPIEN   = (1 << SPI_CTL0_SPIEN_BIT)
SPI_CTL0_MSTMOD  = (1 << SPI_CTL0_MSTMOD_BIT)
SPI_CTL0_CKPL    = (1 << SPI_CTL0_CKPL_BIT)
SPI_CTL0_CKPH    = (1 << SPI_CTL0_CKPH_BIT)

SPI_CTL0_PSC_MASK = 0x00000038

SPI_CTL0_PSC_POS = 3

# GD32VF103 Manual: Section 18.11.2
SPI_CTL1_OFFSET = 0x04

# GD32VF103 Manual: Section 18.11.3
SPI_STAT_OFFSET = 0x08

SPI_STAT_TRANS_BIT = 7
SPI_STAT_TBE_BIT   = 1

SPI_STAT_TRANS = (1 << SPI_STAT_TRANS_BIT)
SPI_STAT_TBE   = (1 << SPI_STAT_TBE_BIT)

# GD32VF103 Manual: Section 18.11.4
SPI_DATA_OFFSET = 0x0c