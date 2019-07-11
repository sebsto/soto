// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore
import NIO

/**
AWS CloudFormation AWS CloudFormation allows you to create and manage AWS infrastructure deployments predictably and repeatedly. You can use AWS CloudFormation to leverage AWS products, such as Amazon Elastic Compute Cloud, Amazon Elastic Block Store, Amazon Simple Notification Service, Elastic Load Balancing, and Auto Scaling to build highly-reliable, highly scalable, cost-effective applications without creating or configuring the underlying AWS infrastructure. With AWS CloudFormation, you declare all of your resources and dependencies in a template file. The template defines a collection of resources as a single unit called a stack. AWS CloudFormation creates and deletes all member resources of the stack together and manages all dependencies between the resources for you. For more information about AWS CloudFormation, see the AWS CloudFormation Product Page. Amazon CloudFormation makes use of other AWS products. If you need additional technical information about a specific AWS product, you can find the product's technical documentation at docs.aws.amazon.com.
*/
public struct CloudFormation {

    let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            region: region,
            service: "cloudformation",
            serviceProtocol: ServiceProtocol(type: .query),
            apiVersion: "2010-05-15",
            endpoint: endpoint,
            middlewares: [],
            possibleErrorTypes: [CloudFormationErrorType.self]
        )
    }

    ///  Cancels an update on the specified stack. If the call completes successfully, the stack rolls back the update and reverts to the previous stack configuration.  You can cancel only stacks that are in the UPDATE_IN_PROGRESS state. 
    @discardableResult public func cancelUpdateStack(_ input: CancelUpdateStackInput) throws -> Future<Void> {
        return try client.send(operation: "CancelUpdateStack", path: "/", httpMethod: "POST", input: input)
    }

    ///  For a specified stack that is in the UPDATE_ROLLBACK_FAILED state, continues rolling it back to the UPDATE_ROLLBACK_COMPLETE state. Depending on the cause of the failure, you can manually  fix the error and continue the rollback. By continuing the rollback, you can return your stack to a working state (the UPDATE_ROLLBACK_COMPLETE state), and then try to update the stack again. A stack goes into the UPDATE_ROLLBACK_FAILED state when AWS CloudFormation cannot roll back all changes after a failed stack update. For example, you might have a stack that is rolling back to an old database instance that was deleted outside of AWS CloudFormation. Because AWS CloudFormation doesn't know the database was deleted, it assumes that the database instance still exists and attempts to roll back to it, causing the update rollback to fail.
    public func continueUpdateRollback(_ input: ContinueUpdateRollbackInput) throws -> Future<ContinueUpdateRollbackOutput> {
        return try client.send(operation: "ContinueUpdateRollback", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a list of changes that will be applied to a stack so that you can review the changes before executing them. You can create a change set for a stack that doesn't exist or an existing stack. If you create a change set for a stack that doesn't exist, the change set shows all of the resources that AWS CloudFormation will create. If you create a change set for an existing stack, AWS CloudFormation compares the stack's information with the information that you submit in the change set and lists the differences. Use change sets to understand which resources AWS CloudFormation will create or change, and how it will change resources in an existing stack, before you create or update a stack. To create a change set for a stack that doesn't exist, for the ChangeSetType parameter, specify CREATE. To create a change set for an existing stack, specify UPDATE for the ChangeSetType parameter. After the CreateChangeSet call successfully completes, AWS CloudFormation starts creating the change set. To check the status of the change set or to review it, use the DescribeChangeSet action. When you are satisfied with the changes the change set will make, execute the change set by using the ExecuteChangeSet action. AWS CloudFormation doesn't make changes until you execute the change set.
    public func createChangeSet(_ input: CreateChangeSetInput) throws -> Future<CreateChangeSetOutput> {
        return try client.send(operation: "CreateChangeSet", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a stack as specified in the template. After the call completes successfully, the stack creation starts. You can check the status of the stack via the DescribeStacks API.
    public func createStack(_ input: CreateStackInput) throws -> Future<CreateStackOutput> {
        return try client.send(operation: "CreateStack", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates stack instances for the specified accounts, within the specified regions. A stack instance refers to a stack in a specific account and region. Accounts and Regions are required parameters—you must specify at least one account and one region. 
    public func createStackInstances(_ input: CreateStackInstancesInput) throws -> Future<CreateStackInstancesOutput> {
        return try client.send(operation: "CreateStackInstances", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a stack set.
    public func createStackSet(_ input: CreateStackSetInput) throws -> Future<CreateStackSetOutput> {
        return try client.send(operation: "CreateStackSet", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes the specified change set. Deleting change sets ensures that no one executes the wrong change set. If the call successfully completes, AWS CloudFormation successfully deleted the change set.
    public func deleteChangeSet(_ input: DeleteChangeSetInput) throws -> Future<DeleteChangeSetOutput> {
        return try client.send(operation: "DeleteChangeSet", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a specified stack. Once the call completes successfully, stack deletion starts. Deleted stacks do not show up in the DescribeStacks API if the deletion has been completed successfully.
    @discardableResult public func deleteStack(_ input: DeleteStackInput) throws -> Future<Void> {
        return try client.send(operation: "DeleteStack", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes stack instances for the specified accounts, in the specified regions. 
    public func deleteStackInstances(_ input: DeleteStackInstancesInput) throws -> Future<DeleteStackInstancesOutput> {
        return try client.send(operation: "DeleteStackInstances", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a stack set. Before you can delete a stack set, all of its member stack instances must be deleted. For more information about how to do this, see DeleteStackInstances. 
    public func deleteStackSet(_ input: DeleteStackSetInput) throws -> Future<DeleteStackSetOutput> {
        return try client.send(operation: "DeleteStackSet", path: "/", httpMethod: "POST", input: input)
    }

    ///  Retrieves your account's AWS CloudFormation limits, such as the maximum number of stacks that you can create in your account. For more information about account limits, see AWS CloudFormation Limits in the AWS CloudFormation User Guide.
    public func describeAccountLimits(_ input: DescribeAccountLimitsInput) throws -> Future<DescribeAccountLimitsOutput> {
        return try client.send(operation: "DescribeAccountLimits", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns the inputs for the change set and a list of changes that AWS CloudFormation will make if you execute the change set. For more information, see Updating Stacks Using Change Sets in the AWS CloudFormation User Guide.
    public func describeChangeSet(_ input: DescribeChangeSetInput) throws -> Future<DescribeChangeSetOutput> {
        return try client.send(operation: "DescribeChangeSet", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns information about a stack drift detection operation. A stack drift detection operation detects whether a stack's actual configuration differs, or has drifted, from it's expected configuration, as defined in the stack template and any values specified as template parameters. A stack is considered to have drifted if one or more of its resources have drifted. For more information on stack and resource drift, see Detecting Unregulated Configuration Changes to Stacks and Resources. Use DetectStackDrift to initiate a stack drift detection operation. DetectStackDrift returns a StackDriftDetectionId you can use to monitor the progress of the operation using DescribeStackDriftDetectionStatus. Once the drift detection operation has completed, use DescribeStackResourceDrifts to return drift information about the stack and its resources.
    public func describeStackDriftDetectionStatus(_ input: DescribeStackDriftDetectionStatusInput) throws -> Future<DescribeStackDriftDetectionStatusOutput> {
        return try client.send(operation: "DescribeStackDriftDetectionStatus", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns all stack related events for a specified stack in reverse chronological order. For more information about a stack's event history, go to Stacks in the AWS CloudFormation User Guide.  You can list events for stacks that have failed to create or have been deleted by specifying the unique stack identifier (stack ID). 
    public func describeStackEvents(_ input: DescribeStackEventsInput) throws -> Future<DescribeStackEventsOutput> {
        return try client.send(operation: "DescribeStackEvents", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns the stack instance that's associated with the specified stack set, AWS account, and region. For a list of stack instances that are associated with a specific stack set, use ListStackInstances.
    public func describeStackInstance(_ input: DescribeStackInstanceInput) throws -> Future<DescribeStackInstanceOutput> {
        return try client.send(operation: "DescribeStackInstance", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns a description of the specified resource in the specified stack. For deleted stacks, DescribeStackResource returns resource information for up to 90 days after the stack has been deleted.
    public func describeStackResource(_ input: DescribeStackResourceInput) throws -> Future<DescribeStackResourceOutput> {
        return try client.send(operation: "DescribeStackResource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns drift information for the resources that have been checked for drift in the specified stack. This includes actual and expected configuration values for resources where AWS CloudFormation detects configuration drift. For a given stack, there will be one StackResourceDrift for each stack resource that has been checked for drift. Resources that have not yet been checked for drift are not included. Resources that do not currently support drift detection are not checked, and so not included. For a list of resources that support drift detection, see Resources that Support Drift Detection. Use DetectStackResourceDrift to detect drift on individual resources, or DetectStackDrift to detect drift on all supported resources for a given stack.
    public func describeStackResourceDrifts(_ input: DescribeStackResourceDriftsInput) throws -> Future<DescribeStackResourceDriftsOutput> {
        return try client.send(operation: "DescribeStackResourceDrifts", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns AWS resource descriptions for running and deleted stacks. If StackName is specified, all the associated resources that are part of the stack are returned. If PhysicalResourceId is specified, the associated resources of the stack that the resource belongs to are returned.  Only the first 100 resources will be returned. If your stack has more resources than this, you should use ListStackResources instead.  For deleted stacks, DescribeStackResources returns resource information for up to 90 days after the stack has been deleted. You must specify either StackName or PhysicalResourceId, but not both. In addition, you can specify LogicalResourceId to filter the returned result. For more information about resources, the LogicalResourceId and PhysicalResourceId, go to the AWS CloudFormation User Guide.  A ValidationError is returned if you specify both StackName and PhysicalResourceId in the same request. 
    public func describeStackResources(_ input: DescribeStackResourcesInput) throws -> Future<DescribeStackResourcesOutput> {
        return try client.send(operation: "DescribeStackResources", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns the description of the specified stack set. 
    public func describeStackSet(_ input: DescribeStackSetInput) throws -> Future<DescribeStackSetOutput> {
        return try client.send(operation: "DescribeStackSet", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns the description of the specified stack set operation. 
    public func describeStackSetOperation(_ input: DescribeStackSetOperationInput) throws -> Future<DescribeStackSetOperationOutput> {
        return try client.send(operation: "DescribeStackSetOperation", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns the description for the specified stack; if no stack name was specified, then it returns the description for all the stacks created.  If the stack does not exist, an AmazonCloudFormationException is returned. 
    public func describeStacks(_ input: DescribeStacksInput) throws -> Future<DescribeStacksOutput> {
        return try client.send(operation: "DescribeStacks", path: "/", httpMethod: "POST", input: input)
    }

    ///  Detects whether a stack's actual configuration differs, or has drifted, from it's expected configuration, as defined in the stack template and any values specified as template parameters. For each resource in the stack that supports drift detection, AWS CloudFormation compares the actual configuration of the resource with its expected template configuration. Only resource properties explicitly defined in the stack template are checked for drift. A stack is considered to have drifted if one or more of its resources differ from their expected template configurations. For more information, see Detecting Unregulated Configuration Changes to Stacks and Resources. Use DetectStackDrift to detect drift on all supported resources for a given stack, or DetectStackResourceDrift to detect drift on individual resources. For a list of stack resources that currently support drift detection, see Resources that Support Drift Detection.  DetectStackDrift can take up to several minutes, depending on the number of resources contained within the stack. Use DescribeStackDriftDetectionStatus to monitor the progress of a detect stack drift operation. Once the drift detection operation has completed, use DescribeStackResourceDrifts to return drift information about the stack and its resources. When detecting drift on a stack, AWS CloudFormation does not detect drift on any nested stacks belonging to that stack. Perform DetectStackDrift directly on the nested stack itself.
    public func detectStackDrift(_ input: DetectStackDriftInput) throws -> Future<DetectStackDriftOutput> {
        return try client.send(operation: "DetectStackDrift", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns information about whether a resource's actual configuration differs, or has drifted, from it's expected configuration, as defined in the stack template and any values specified as template parameters. This information includes actual and expected property values for resources in which AWS CloudFormation detects drift. Only resource properties explicitly defined in the stack template are checked for drift. For more information about stack and resource drift, see Detecting Unregulated Configuration Changes to Stacks and Resources. Use DetectStackResourceDrift to detect drift on individual resources, or DetectStackDrift to detect drift on all resources in a given stack that support drift detection. Resources that do not currently support drift detection cannot be checked. For a list of resources that support drift detection, see Resources that Support Drift Detection.
    public func detectStackResourceDrift(_ input: DetectStackResourceDriftInput) throws -> Future<DetectStackResourceDriftOutput> {
        return try client.send(operation: "DetectStackResourceDrift", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns the estimated monthly cost of a template. The return value is an AWS Simple Monthly Calculator URL with a query string that describes the resources required to run the template.
    public func estimateTemplateCost(_ input: EstimateTemplateCostInput) throws -> Future<EstimateTemplateCostOutput> {
        return try client.send(operation: "EstimateTemplateCost", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates a stack using the input information that was provided when the specified change set was created. After the call successfully completes, AWS CloudFormation starts updating the stack. Use the DescribeStacks action to view the status of the update. When you execute a change set, AWS CloudFormation deletes all other change sets associated with the stack because they aren't valid for the updated stack. If a stack policy is associated with the stack, AWS CloudFormation enforces the policy during the update. You can't specify a temporary stack policy that overrides the current policy.
    public func executeChangeSet(_ input: ExecuteChangeSetInput) throws -> Future<ExecuteChangeSetOutput> {
        return try client.send(operation: "ExecuteChangeSet", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns the stack policy for a specified stack. If a stack doesn't have a policy, a null value is returned.
    public func getStackPolicy(_ input: GetStackPolicyInput) throws -> Future<GetStackPolicyOutput> {
        return try client.send(operation: "GetStackPolicy", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns the template body for a specified stack. You can get the template for running or deleted stacks. For deleted stacks, GetTemplate returns the template for up to 90 days after the stack has been deleted.   If the template does not exist, a ValidationError is returned.  
    public func getTemplate(_ input: GetTemplateInput) throws -> Future<GetTemplateOutput> {
        return try client.send(operation: "GetTemplate", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns information about a new or existing template. The GetTemplateSummary action is useful for viewing parameter information, such as default parameter values and parameter types, before you create or update a stack or stack set. You can use the GetTemplateSummary action when you submit a template, or you can get template information for a stack set, or a running or deleted stack. For deleted stacks, GetTemplateSummary returns the template information for up to 90 days after the stack has been deleted. If the template does not exist, a ValidationError is returned.
    public func getTemplateSummary(_ input: GetTemplateSummaryInput) throws -> Future<GetTemplateSummaryOutput> {
        return try client.send(operation: "GetTemplateSummary", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns the ID and status of each active change set for a stack. For example, AWS CloudFormation lists change sets that are in the CREATE_IN_PROGRESS or CREATE_PENDING state.
    public func listChangeSets(_ input: ListChangeSetsInput) throws -> Future<ListChangeSetsOutput> {
        return try client.send(operation: "ListChangeSets", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists all exported output values in the account and region in which you call this action. Use this action to see the exported output values that you can import into other stacks. To import values, use the  Fn::ImportValue  function.  For more information, see  AWS CloudFormation Export Stack Output Values.
    public func listExports(_ input: ListExportsInput) throws -> Future<ListExportsOutput> {
        return try client.send(operation: "ListExports", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists all stacks that are importing an exported output value. To modify or remove an exported output value, first use this action to see which stacks are using it. To see the exported output values in your account, see ListExports.  For more information about importing an exported output value, see the  Fn::ImportValue  function. 
    public func listImports(_ input: ListImportsInput) throws -> Future<ListImportsOutput> {
        return try client.send(operation: "ListImports", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns summary information about stack instances that are associated with the specified stack set. You can filter for stack instances that are associated with a specific AWS account name or region.
    public func listStackInstances(_ input: ListStackInstancesInput) throws -> Future<ListStackInstancesOutput> {
        return try client.send(operation: "ListStackInstances", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns descriptions of all resources of the specified stack. For deleted stacks, ListStackResources returns resource information for up to 90 days after the stack has been deleted.
    public func listStackResources(_ input: ListStackResourcesInput) throws -> Future<ListStackResourcesOutput> {
        return try client.send(operation: "ListStackResources", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns summary information about the results of a stack set operation. 
    public func listStackSetOperationResults(_ input: ListStackSetOperationResultsInput) throws -> Future<ListStackSetOperationResultsOutput> {
        return try client.send(operation: "ListStackSetOperationResults", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns summary information about operations performed on a stack set. 
    public func listStackSetOperations(_ input: ListStackSetOperationsInput) throws -> Future<ListStackSetOperationsOutput> {
        return try client.send(operation: "ListStackSetOperations", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns summary information about stack sets that are associated with the user.
    public func listStackSets(_ input: ListStackSetsInput) throws -> Future<ListStackSetsOutput> {
        return try client.send(operation: "ListStackSets", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns the summary information for stacks whose status matches the specified StackStatusFilter. Summary information for stacks that have been deleted is kept for 90 days after the stack is deleted. If no StackStatusFilter is specified, summary information for all stacks is returned (including existing stacks and stacks that have been deleted).
    public func listStacks(_ input: ListStacksInput) throws -> Future<ListStacksOutput> {
        return try client.send(operation: "ListStacks", path: "/", httpMethod: "POST", input: input)
    }

    ///  Sets a stack policy for a specified stack.
    @discardableResult public func setStackPolicy(_ input: SetStackPolicyInput) throws -> Future<Void> {
        return try client.send(operation: "SetStackPolicy", path: "/", httpMethod: "POST", input: input)
    }

    ///  Sends a signal to the specified resource with a success or failure status. You can use the SignalResource API in conjunction with a creation policy or update policy. AWS CloudFormation doesn't proceed with a stack creation or update until resources receive the required number of signals or the timeout period is exceeded. The SignalResource API is useful in cases where you want to send signals from anywhere other than an Amazon EC2 instance.
    @discardableResult public func signalResource(_ input: SignalResourceInput) throws -> Future<Void> {
        return try client.send(operation: "SignalResource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Stops an in-progress operation on a stack set and its associated stack instances. 
    public func stopStackSetOperation(_ input: StopStackSetOperationInput) throws -> Future<StopStackSetOperationOutput> {
        return try client.send(operation: "StopStackSetOperation", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates a stack as specified in the template. After the call completes successfully, the stack update starts. You can check the status of the stack via the DescribeStacks action. To get a copy of the template for an existing stack, you can use the GetTemplate action. For more information about creating an update template, updating a stack, and monitoring the progress of the update, see Updating a Stack.
    public func updateStack(_ input: UpdateStackInput) throws -> Future<UpdateStackOutput> {
        return try client.send(operation: "UpdateStack", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates the parameter values for stack instances for the specified accounts, within the specified regions. A stack instance refers to a stack in a specific account and region.  You can only update stack instances in regions and accounts where they already exist; to create additional stack instances, use CreateStackInstances.  During stack set updates, any parameters overridden for a stack instance are not updated, but retain their overridden value. You can only update the parameter values that are specified in the stack set; to add or delete a parameter itself, use UpdateStackSet to update the stack set template. If you add a parameter to a template, before you can override the parameter value specified in the stack set you must first use UpdateStackSet to update all stack instances with the updated template and parameter value specified in the stack set. Once a stack instance has been updated with the new parameter, you can then override the parameter value using UpdateStackInstances.
    public func updateStackInstances(_ input: UpdateStackInstancesInput) throws -> Future<UpdateStackInstancesOutput> {
        return try client.send(operation: "UpdateStackInstances", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates the stack set, and associated stack instances in the specified accounts and regions. Even if the stack set operation created by updating the stack set fails (completely or partially, below or above a specified failure tolerance), the stack set is updated with your changes. Subsequent CreateStackInstances calls on the specified stack set use the updated stack set.
    public func updateStackSet(_ input: UpdateStackSetInput) throws -> Future<UpdateStackSetOutput> {
        return try client.send(operation: "UpdateStackSet", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates termination protection for the specified stack. If a user attempts to delete a stack with termination protection enabled, the operation fails and the stack remains unchanged. For more information, see Protecting a Stack From Being Deleted in the AWS CloudFormation User Guide.  For nested stacks, termination protection is set on the root stack and cannot be changed directly on the nested stack.
    public func updateTerminationProtection(_ input: UpdateTerminationProtectionInput) throws -> Future<UpdateTerminationProtectionOutput> {
        return try client.send(operation: "UpdateTerminationProtection", path: "/", httpMethod: "POST", input: input)
    }

    ///  Validates a specified template. AWS CloudFormation first checks if the template is valid JSON. If it isn't, AWS CloudFormation checks if the template is valid YAML. If both these checks fail, AWS CloudFormation returns a template validation error.
    public func validateTemplate(_ input: ValidateTemplateInput) throws -> Future<ValidateTemplateOutput> {
        return try client.send(operation: "ValidateTemplate", path: "/", httpMethod: "POST", input: input)
    }

}
