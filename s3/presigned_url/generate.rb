require 'aws-sdk-resources'
s3 = Aws::S3::Resource.new(region: 'ap-northeast-1')
obj = s3.bucket('shoutak-default').object('aws-certification/s3/presigned_url/test')
url = obj.presigned_url(:put)
puts url
