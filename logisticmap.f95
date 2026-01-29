program Logisticmap

        implicit none
        integer, parameter :: dp = selected_real_kind(15, 307)

        real(kind=dp)::xn,n,r,M
        integer::i,j,iters,plot_p
        
        open(unit=15,file="logistic_map.dat",action="write",status="replace")
        
        
        M=6000.0_dp
        n=4.0_dp/M
        iters=1000
        plot_p=200

        do i=1,int(M)
                r=real(i,kind=dp)*n
                xn=0.5_dp


                do j=1,iters
                        xn=xn*r*(1.0_dp-xn)

                end do
        
                do j=1,plot_p
                        xn=xn*r*(1.0_dp-xn)
                        write(unit=15,fmt="(2f16.8)") r,xn

                end do


        end do 
        close(unit=15)

        print*,"Data file 'logistic_map.dat' generated successfully."        

end program Logisticmap

