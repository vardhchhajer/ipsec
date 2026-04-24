openssl genpkey -algorithm RSA -out private.pem -aes256
openssl rsa -pubout -in private.pem -out public.pem
nano msg.txt
openssl dgst -sha256 -sign private.pem -out message.sig msg.txt
openssl dgst -sha256 -verify public.pem -signature message.sig msg.txt
