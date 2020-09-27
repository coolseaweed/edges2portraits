FROM nvidia/cuda:10.0-cudnn7-runtime-ubuntu18.04
LABEL maintainer=coolseaweed

RUN apt-get update 


#RUN apt-get -y upgrade 
RUN apt-get install -y --no-install-recommends g++ git curl emacs

# Add sudo 
RUN apt-get -y install sudo  

# python stuff 
RUN apt-get install -y python3-pip python3-dev 
RUN cd /usr/local/bin && \    
	 ln -s /usr/bin/python3 python && \        
	 ln -s /usr/bin/pip3 pip && \            
	 pip3 install --upgrade pip



# ENV variables 
ENV LANG=C.UTF-8  


# Dependency

RUN pip3 install scikit-image matplotlib keras==2.2.4 jupyter notebook

# workspace 
RUN mkdir -p /workspace 
WORKDIR /workspace  




ENTRYPOINT ["/bin/bash"]



