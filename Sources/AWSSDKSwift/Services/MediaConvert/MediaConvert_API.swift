// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore
import NIO

/**
AWS Elemental MediaConvert
*/
public struct MediaConvert {

    let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            region: region,
            service: "mediaconvert",
            serviceProtocol: ServiceProtocol(type: .restjson, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2017-08-29",
            endpoint: endpoint,
            middlewares: [],
            possibleErrorTypes: [MediaConvertErrorType.self]
        )
    }

    ///  Associates an AWS Certificate Manager (ACM) Amazon Resource Name (ARN) with AWS Elemental MediaConvert.
    public func associateCertificate(_ input: AssociateCertificateRequest) throws -> Future<AssociateCertificateResponse> {
        return try client.send(operation: "AssociateCertificate", path: "/2017-08-29/certificates", httpMethod: "POST", input: input)
    }

    ///  Permanently cancel a job. Once you have canceled a job, you can't start it again.
    public func cancelJob(_ input: CancelJobRequest) throws -> Future<CancelJobResponse> {
        return try client.send(operation: "CancelJob", path: "/2017-08-29/jobs/{id}", httpMethod: "DELETE", input: input)
    }

    ///  Create a new transcoding job. For information about jobs and job settings, see the User Guide at http://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html
    public func createJob(_ input: CreateJobRequest) throws -> Future<CreateJobResponse> {
        return try client.send(operation: "CreateJob", path: "/2017-08-29/jobs", httpMethod: "POST", input: input)
    }

    ///  Create a new job template. For information about job templates see the User Guide at http://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html
    public func createJobTemplate(_ input: CreateJobTemplateRequest) throws -> Future<CreateJobTemplateResponse> {
        return try client.send(operation: "CreateJobTemplate", path: "/2017-08-29/jobTemplates", httpMethod: "POST", input: input)
    }

    ///  Create a new preset. For information about job templates see the User Guide at http://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html
    public func createPreset(_ input: CreatePresetRequest) throws -> Future<CreatePresetResponse> {
        return try client.send(operation: "CreatePreset", path: "/2017-08-29/presets", httpMethod: "POST", input: input)
    }

    ///  Create a new transcoding queue. For information about queues, see Working With Queues in the User Guide at https://docs.aws.amazon.com/mediaconvert/latest/ug/working-with-queues.html
    public func createQueue(_ input: CreateQueueRequest) throws -> Future<CreateQueueResponse> {
        return try client.send(operation: "CreateQueue", path: "/2017-08-29/queues", httpMethod: "POST", input: input)
    }

    ///  Permanently delete a job template you have created.
    public func deleteJobTemplate(_ input: DeleteJobTemplateRequest) throws -> Future<DeleteJobTemplateResponse> {
        return try client.send(operation: "DeleteJobTemplate", path: "/2017-08-29/jobTemplates/{name}", httpMethod: "DELETE", input: input)
    }

    ///  Permanently delete a preset you have created.
    public func deletePreset(_ input: DeletePresetRequest) throws -> Future<DeletePresetResponse> {
        return try client.send(operation: "DeletePreset", path: "/2017-08-29/presets/{name}", httpMethod: "DELETE", input: input)
    }

    ///  Permanently delete a queue you have created.
    public func deleteQueue(_ input: DeleteQueueRequest) throws -> Future<DeleteQueueResponse> {
        return try client.send(operation: "DeleteQueue", path: "/2017-08-29/queues/{name}", httpMethod: "DELETE", input: input)
    }

    ///  Send an request with an empty body to the regional API endpoint to get your account API endpoint.
    public func describeEndpoints(_ input: DescribeEndpointsRequest) throws -> Future<DescribeEndpointsResponse> {
        return try client.send(operation: "DescribeEndpoints", path: "/2017-08-29/endpoints", httpMethod: "POST", input: input)
    }

    ///  Removes an association between the Amazon Resource Name (ARN) of an AWS Certificate Manager (ACM) certificate and an AWS Elemental MediaConvert resource.
    public func disassociateCertificate(_ input: DisassociateCertificateRequest) throws -> Future<DisassociateCertificateResponse> {
        return try client.send(operation: "DisassociateCertificate", path: "/2017-08-29/certificates/{arn}", httpMethod: "DELETE", input: input)
    }

    ///  Retrieve the JSON for a specific completed transcoding job.
    public func getJob(_ input: GetJobRequest) throws -> Future<GetJobResponse> {
        return try client.send(operation: "GetJob", path: "/2017-08-29/jobs/{id}", httpMethod: "GET", input: input)
    }

    ///  Retrieve the JSON for a specific job template.
    public func getJobTemplate(_ input: GetJobTemplateRequest) throws -> Future<GetJobTemplateResponse> {
        return try client.send(operation: "GetJobTemplate", path: "/2017-08-29/jobTemplates/{name}", httpMethod: "GET", input: input)
    }

    ///  Retrieve the JSON for a specific preset.
    public func getPreset(_ input: GetPresetRequest) throws -> Future<GetPresetResponse> {
        return try client.send(operation: "GetPreset", path: "/2017-08-29/presets/{name}", httpMethod: "GET", input: input)
    }

    ///  Retrieve the JSON for a specific queue.
    public func getQueue(_ input: GetQueueRequest) throws -> Future<GetQueueResponse> {
        return try client.send(operation: "GetQueue", path: "/2017-08-29/queues/{name}", httpMethod: "GET", input: input)
    }

    ///  Retrieve a JSON array of up to twenty of your job templates. This will return the templates themselves, not just a list of them. To retrieve the next twenty templates, use the nextToken string returned with the array
    public func listJobTemplates(_ input: ListJobTemplatesRequest) throws -> Future<ListJobTemplatesResponse> {
        return try client.send(operation: "ListJobTemplates", path: "/2017-08-29/jobTemplates", httpMethod: "GET", input: input)
    }

    ///  Retrieve a JSON array of up to twenty of your most recently created jobs. This array includes in-process, completed, and errored jobs. This will return the jobs themselves, not just a list of the jobs. To retrieve the twenty next most recent jobs, use the nextToken string returned with the array.
    public func listJobs(_ input: ListJobsRequest) throws -> Future<ListJobsResponse> {
        return try client.send(operation: "ListJobs", path: "/2017-08-29/jobs", httpMethod: "GET", input: input)
    }

    ///  Retrieve a JSON array of up to twenty of your presets. This will return the presets themselves, not just a list of them. To retrieve the next twenty presets, use the nextToken string returned with the array.
    public func listPresets(_ input: ListPresetsRequest) throws -> Future<ListPresetsResponse> {
        return try client.send(operation: "ListPresets", path: "/2017-08-29/presets", httpMethod: "GET", input: input)
    }

    ///  Retrieve a JSON array of up to twenty of your queues. This will return the queues themselves, not just a list of them. To retrieve the next twenty queues, use the nextToken string returned with the array.
    public func listQueues(_ input: ListQueuesRequest) throws -> Future<ListQueuesResponse> {
        return try client.send(operation: "ListQueues", path: "/2017-08-29/queues", httpMethod: "GET", input: input)
    }

    ///  Retrieve the tags for a MediaConvert resource.
    public func listTagsForResource(_ input: ListTagsForResourceRequest) throws -> Future<ListTagsForResourceResponse> {
        return try client.send(operation: "ListTagsForResource", path: "/2017-08-29/tags/{arn}", httpMethod: "GET", input: input)
    }

    ///  Add tags to a MediaConvert queue, preset, or job template. For information about tagging, see the User Guide at https://docs.aws.amazon.com/mediaconvert/latest/ug/tagging-resources.html
    public func tagResource(_ input: TagResourceRequest) throws -> Future<TagResourceResponse> {
        return try client.send(operation: "TagResource", path: "/2017-08-29/tags", httpMethod: "POST", input: input)
    }

    ///  Remove tags from a MediaConvert queue, preset, or job template. For information about tagging, see the User Guide at https://docs.aws.amazon.com/mediaconvert/latest/ug/tagging-resources.html
    public func untagResource(_ input: UntagResourceRequest) throws -> Future<UntagResourceResponse> {
        return try client.send(operation: "UntagResource", path: "/2017-08-29/tags/{arn}", httpMethod: "PUT", input: input)
    }

    ///  Modify one of your existing job templates.
    public func updateJobTemplate(_ input: UpdateJobTemplateRequest) throws -> Future<UpdateJobTemplateResponse> {
        return try client.send(operation: "UpdateJobTemplate", path: "/2017-08-29/jobTemplates/{name}", httpMethod: "PUT", input: input)
    }

    ///  Modify one of your existing presets.
    public func updatePreset(_ input: UpdatePresetRequest) throws -> Future<UpdatePresetResponse> {
        return try client.send(operation: "UpdatePreset", path: "/2017-08-29/presets/{name}", httpMethod: "PUT", input: input)
    }

    ///  Modify one of your existing queues.
    public func updateQueue(_ input: UpdateQueueRequest) throws -> Future<UpdateQueueResponse> {
        return try client.send(operation: "UpdateQueue", path: "/2017-08-29/queues/{name}", httpMethod: "PUT", input: input)
    }

}
