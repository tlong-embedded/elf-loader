/* Linker script to configure memory regions. 
 * Need modifying for a specific board. 
 *   FLASH.ORIGIN: starting address of flash
 *   FLASH.LENGTH: length of flash
 *   RAM.ORIGIN: starting address of RAM bank 0
 *   RAM.LENGTH: length of RAM bank 0
 */
MEMORY
{
    FLASH (rx)         : ORIGIN = 0x00000000, LENGTH = 0x0200000  /*   2M */
    RAM (rwx)          : ORIGIN = 0x1FFE0000, LENGTH = 0x00A0000  /* 640K */
    DATA_FLASH (rx)    : ORIGIN = 0x40100000, LENGTH = 0x0010000  /*  64K */
    QSPI_FLASH (rx)    : ORIGIN = 0x60000000, LENGTH = 0x4000000  /*  64M, Change in QSPI section below also */
    SDRAM (rwx)        : ORIGIN = 0x90000000, LENGTH = 0x2000000  /*  32M */
    ID_CODE (rx)       : ORIGIN = 0x0100A150, LENGTH = 0x10    /* 16 bytes */
}
