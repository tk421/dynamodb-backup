
build:
	docker build -t dynamodb-replicator-img . 

bash:
	docker run -ti \
	-v ~/.aws:/root/.aws \
	dynamodb-replicator-img \
	bash

backup-table-seoul:
	docker run -ti  \
	-v ~/.aws:/root/.aws \
	dynamodb-replicator-img \
	nodejs /usr/local/bin/backup-table ap-northeast-2/History s3://dynamodb-ap-northeast-2-history/26022019

