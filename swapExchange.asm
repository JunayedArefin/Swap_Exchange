.model small
.stack 100h
.data

data1 db ?
data2 db ?

.code
Main proc 
    
    mov ah,@data
    mov ds,ax
    
    mov ah,1
    int 21h
    mov data1,al ;store on data1
    

	
	mov ah,1
    int 21h        ;store on data2
    mov data2,al
    

    
    mov bh,data2    ;store data2/data1 on register
    mov bl,data1
    
    xchg bl,bh
    
    mov data1,bl    ; move data from bl/bh to data2/data1
    mov data2,bh
    
    
    
    mov ah,2
    mov dl,10
    int 21h         ;new line
    mov dl,13
    int 21h
    
    mov ah,2
    mov dl,data1    ;print data1
    int 21h
    
    mov ah,2
    mov dl,10
    int 21h         ;new line
    mov dl,13
    int 21h
    
    mov ah,2
    mov dl,data2    ;print data1
    int 21h
	
	exit:
	mov ah,4ch
	int 21h
	main endp
end main
