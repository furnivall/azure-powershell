
# ----------------------------------------------------------------------------------
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# Code generated by Microsoft (R) AutoRest Code Generator.Changes may cause incorrect behavior and will be lost if the code
# is regenerated.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Lists all of the available Microsoft.Marketplace REST API operations.
.Description
Lists all of the available Microsoft.Marketplace REST API operations.
.Example
{{ Add code here }}
.Example
{{ Add code here }}

.Outputs
Microsoft.Azure.PowerShell.Cmdlets.Marketplace.Models.IOperationListResult
.Link
https://learn.microsoft.com/powershell/module/az.marketplace/get-azmarketplaceoperation
#>
function Get-AzMarketplaceOperation {
[OutputType([Microsoft.Azure.PowerShell.Cmdlets.Marketplace.Models.IOperationListResult])]
[CmdletBinding(DefaultParameterSetName='List', PositionalBinding=$false)]
param(
    [Parameter()]
    [Alias('AzureRMContext', 'AzureCredential')]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.Marketplace.Category('Azure')]
    [System.Management.Automation.PSObject]
    # The DefaultProfile parameter is not functional.
    # Use the SubscriptionId parameter when available if executing the cmdlet against a different subscription.
    ${DefaultProfile},

    [Parameter(DontShow)]
    [Microsoft.Azure.PowerShell.Cmdlets.Marketplace.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.Marketplace.Category('Runtime')]
    [Microsoft.Azure.PowerShell.Cmdlets.Marketplace.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.Marketplace.Category('Runtime')]
    [Microsoft.Azure.PowerShell.Cmdlets.Marketplace.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Azure.PowerShell.Cmdlets.Marketplace.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.Marketplace.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Azure.PowerShell.Cmdlets.Marketplace.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName

        $mapping = @{
            List = 'Az.Marketplace.private\Get-AzMarketplaceOperation_List';
        }

        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {

        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {

        throw
    }

}
end {
    try {
        $steppablePipeline.End()

    } catch {

        throw
    }
} 
}

<#
.Synopsis
Update or add an offer to a specific collection of the private store.
.Description
Update or add an offer to a specific collection of the private store.
.Example
$acc = @{Accessibility = "azure_managedservices_professional"}
New-AzMarketplacePrivateStoreCollectionOffer -CollectionId fdb889a1-cf3e-49f0-95b8-2bb012fa01f1 -PrivateStoreId 7f5402e4-e8f4-46bd-9bd1-8d27866a606b  -OfferId aumatics.azure_managedservices -Plan $acc

.Inputs
Microsoft.Azure.PowerShell.Cmdlets.Marketplace.Models.IMarketplaceIdentity
.Inputs
Microsoft.Azure.PowerShell.Cmdlets.Marketplace.Models.IOffer
.Outputs
Microsoft.Azure.PowerShell.Cmdlets.Marketplace.Models.IOffer
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IMarketplaceIdentity>: Identity Parameter
  [AdminRequestApprovalId <String>]: The admin request approval ID to get create or update
  [CollectionId <String>]: The collection ID
  [Id <String>]: Resource identity path
  [OfferId <String>]: The offer ID to update or delete
  [PrivateStoreId <String>]: The store ID - must use the tenant ID
  [RequestApprovalId <String>]: The request approval ID to get create or update

PAYLOAD <IOffer>: The privateStore offer data structure.
  [ETag <String>]: Identifier for purposes of race condition
  [IconFileUri <IOfferPropertiesIconFileUris>]: Icon File Uris
    [(Any) <String>]: This indicates any property can be added to this object.
  [Plan <List<IPlan>>]: Offer plans
    [Accessibility <String>]: Plan accessibility
  [SpecificPlanIdsLimitation <List<String>>]: Plan ids limitation for this offer
  [UpdateSuppressedDueIdempotence <Boolean?>]: Indicating whether the offer was not updated to db (true = not updated). If the allow list is identical to the existed one in db, the offer would not be updated.
.Link
https://learn.microsoft.com/powershell/module/az.marketplace/new-azmarketplaceprivatestorecollectionoffer
#>
function New-AzMarketplacePrivateStoreCollectionOffer {
[OutputType([Microsoft.Azure.PowerShell.Cmdlets.Marketplace.Models.IOffer])]
[CmdletBinding(DefaultParameterSetName='CreateViaIdentity', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
param(
    [Parameter(Mandatory, ValueFromPipeline)]
    [Microsoft.Azure.PowerShell.Cmdlets.Marketplace.Category('Path')]
    [Microsoft.Azure.PowerShell.Cmdlets.Marketplace.Models.IMarketplaceIdentity]
    # Identity Parameter
    ${InputObject},

    [Parameter(Mandatory, ValueFromPipeline)]
    [Microsoft.Azure.PowerShell.Cmdlets.Marketplace.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.Marketplace.Models.IOffer]
    # The privateStore offer data structure.
    ${Payload},

    [Parameter()]
    [Alias('AzureRMContext', 'AzureCredential')]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.Marketplace.Category('Azure')]
    [System.Management.Automation.PSObject]
    # The DefaultProfile parameter is not functional.
    # Use the SubscriptionId parameter when available if executing the cmdlet against a different subscription.
    ${DefaultProfile},

    [Parameter(DontShow)]
    [Microsoft.Azure.PowerShell.Cmdlets.Marketplace.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.Marketplace.Category('Runtime')]
    [Microsoft.Azure.PowerShell.Cmdlets.Marketplace.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.Marketplace.Category('Runtime')]
    [Microsoft.Azure.PowerShell.Cmdlets.Marketplace.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Azure.PowerShell.Cmdlets.Marketplace.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.Marketplace.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Azure.PowerShell.Cmdlets.Marketplace.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName

        $mapping = @{
            CreateViaIdentity = 'Az.Marketplace.private\New-AzMarketplacePrivateStoreCollectionOffer_CreateViaIdentity';
        }

        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {

        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {

        throw
    }

}
end {
    try {
        $steppablePipeline.End()

    } catch {

        throw
    }
} 
}

<#
.Synopsis
Create private store collection
.Description
Create private store collection
.Example
New-AzMarketplacePrivateStoreCollection -CollectionName test -CollectionId fdb889a1-cf3e-49f0-95b8-2bb012fa01f1 -PrivateStoreId 3ac32d8c-e888-4dc6-b4ff-be4d755af13a -SubscriptionsList 7f5402e4-e8f4-46bd-9bd1-8d27866a606b

.Inputs
Microsoft.Azure.PowerShell.Cmdlets.Marketplace.Models.ICollection
.Inputs
Microsoft.Azure.PowerShell.Cmdlets.Marketplace.Models.IMarketplaceIdentity
.Outputs
Microsoft.Azure.PowerShell.Cmdlets.Marketplace.Models.ICollection
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IMarketplaceIdentity>: Identity Parameter
  [AdminRequestApprovalId <String>]: The admin request approval ID to get create or update
  [CollectionId <String>]: The collection ID
  [Id <String>]: Resource identity path
  [OfferId <String>]: The offer ID to update or delete
  [PrivateStoreId <String>]: The store ID - must use the tenant ID
  [RequestApprovalId <String>]: The request approval ID to get create or update

PAYLOAD <ICollection>: The Collection data structure.
  [AllSubscription <Boolean?>]: Indicating whether all subscriptions are selected (=true) or not (=false).
  [Claim <String>]: Gets or sets the association with Commercial's Billing Account.
  [CollectionName <String>]: Gets or sets collection name.
  [Enabled <Boolean?>]: Indicating whether the collection is enabled or disabled.
  [SubscriptionsList <List<String>>]: Gets or sets subscription ids list. Empty list indicates all subscriptions are selected, null indicates no update is done, explicit list indicates the explicit selected subscriptions. On insert, null is considered as bad request
.Link
https://learn.microsoft.com/powershell/module/az.marketplace/new-azmarketplaceprivatestorecollection
#>
function New-AzMarketplacePrivateStoreCollection {
[OutputType([Microsoft.Azure.PowerShell.Cmdlets.Marketplace.Models.ICollection])]
[CmdletBinding(DefaultParameterSetName='CreateViaIdentity', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
param(
    [Parameter(Mandatory, ValueFromPipeline)]
    [Microsoft.Azure.PowerShell.Cmdlets.Marketplace.Category('Path')]
    [Microsoft.Azure.PowerShell.Cmdlets.Marketplace.Models.IMarketplaceIdentity]
    # Identity Parameter
    ${InputObject},

    [Parameter(Mandatory, ValueFromPipeline)]
    [Microsoft.Azure.PowerShell.Cmdlets.Marketplace.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.Marketplace.Models.ICollection]
    # The Collection data structure.
    ${Payload},

    [Parameter()]
    [Alias('AzureRMContext', 'AzureCredential')]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.Marketplace.Category('Azure')]
    [System.Management.Automation.PSObject]
    # The DefaultProfile parameter is not functional.
    # Use the SubscriptionId parameter when available if executing the cmdlet against a different subscription.
    ${DefaultProfile},

    [Parameter(DontShow)]
    [Microsoft.Azure.PowerShell.Cmdlets.Marketplace.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.Marketplace.Category('Runtime')]
    [Microsoft.Azure.PowerShell.Cmdlets.Marketplace.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.Marketplace.Category('Runtime')]
    [Microsoft.Azure.PowerShell.Cmdlets.Marketplace.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Azure.PowerShell.Cmdlets.Marketplace.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.Marketplace.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Azure.PowerShell.Cmdlets.Marketplace.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName

        $mapping = @{
            CreateViaIdentity = 'Az.Marketplace.private\New-AzMarketplacePrivateStoreCollection_CreateViaIdentity';
        }

        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {

        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {

        throw
    }

}
end {
    try {
        $steppablePipeline.End()

    } catch {

        throw
    }
} 
}

<#
.Synopsis
Changes private store properties
.Description
Changes private store properties
.Example
New-AzMarketplacePrivateStore -Id 0000000-0000-00000-0000-000000000000 -Availability 'disabled' -ETag '0000000-0000-00000-0000-000000000000'

.Inputs
Microsoft.Azure.PowerShell.Cmdlets.Marketplace.Models.IMarketplaceIdentity
.Inputs
Microsoft.Azure.PowerShell.Cmdlets.Marketplace.Models.IPrivateStore
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IMarketplaceIdentity>: Identity Parameter
  [AdminRequestApprovalId <String>]: The admin request approval ID to get create or update
  [CollectionId <String>]: The collection ID
  [Id <String>]: Resource identity path
  [OfferId <String>]: The offer ID to update or delete
  [PrivateStoreId <String>]: The store ID - must use the tenant ID
  [RequestApprovalId <String>]: The request approval ID to get create or update

PAYLOAD <IPrivateStore>: The PrivateStore data structure.
  [Availability <String>]: Indicates private store availability
  [Branding <IPrivateStorePropertiesBranding>]: Gets or sets list of branding characteristics
    [(Any) <String>]: This indicates any property can be added to this object.
  [ETag <String>]: Identifier for purposes of race condition
  [IsGov <Boolean?>]: Is government
  [NotificationSettingRecipient <List<IRecipient>>]: Gets or sets list of notified recipients for new requests
    [PrincipalId <String>]: Principal ID
  [NotificationSettingSendToAllMarketplaceAdmin <Boolean?>]: Gets or sets whether to send email to all marketplace admins for new requests
  [PrivateStoreName <String>]: Private Store Name
  [TenantId <String>]: Tenant id
.Link
https://learn.microsoft.com/powershell/module/az.marketplace/new-azmarketplaceprivatestore
#>
function New-AzMarketplacePrivateStore {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='CreateViaIdentity', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
param(
    [Parameter(Mandatory, ValueFromPipeline)]
    [Microsoft.Azure.PowerShell.Cmdlets.Marketplace.Category('Path')]
    [Microsoft.Azure.PowerShell.Cmdlets.Marketplace.Models.IMarketplaceIdentity]
    # Identity Parameter
    ${InputObject},

    [Parameter(Mandatory, ValueFromPipeline)]
    [Microsoft.Azure.PowerShell.Cmdlets.Marketplace.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.Marketplace.Models.IPrivateStore]
    # The PrivateStore data structure.
    ${Payload},

    [Parameter()]
    [Alias('AzureRMContext', 'AzureCredential')]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.Marketplace.Category('Azure')]
    [System.Management.Automation.PSObject]
    # The DefaultProfile parameter is not functional.
    # Use the SubscriptionId parameter when available if executing the cmdlet against a different subscription.
    ${DefaultProfile},

    [Parameter(DontShow)]
    [Microsoft.Azure.PowerShell.Cmdlets.Marketplace.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.Marketplace.Category('Runtime')]
    [Microsoft.Azure.PowerShell.Cmdlets.Marketplace.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.Marketplace.Category('Runtime')]
    [Microsoft.Azure.PowerShell.Cmdlets.Marketplace.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Marketplace.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Returns true when the command succeeds
    ${PassThru},

    [Parameter(DontShow)]
    [Microsoft.Azure.PowerShell.Cmdlets.Marketplace.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.Marketplace.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Azure.PowerShell.Cmdlets.Marketplace.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName

        $mapping = @{
            CreateViaIdentity = 'Az.Marketplace.private\New-AzMarketplacePrivateStore_CreateViaIdentity';
        }

        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {

        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {

        throw
    }

}
end {
    try {
        $steppablePipeline.End()

    } catch {

        throw
    }
} 
}
