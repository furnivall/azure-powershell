// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
// Code generated by Microsoft (R) AutoRest Code Generator.
// Changes may cause incorrect behavior and will be lost if the code is regenerated.
namespace Microsoft.Azure.Management.RecoveryServices.Backup
{
    using Microsoft.Rest.Azure;
    using Models;

    /// <summary>
    /// Extension methods for ProtectionIntentOperations
    /// </summary>
    public static partial class ProtectionIntentOperationsExtensions
    {
        /// <summary>
        /// It will validate followings
        /// 1. Vault capacity
        /// 2. VM is already protected
        /// 3. Any VM related configuration passed in properties.
        /// </summary>
        /// <param name='operations'>
        /// The operations group for this extension method.
        /// </param>
        /// <param name='azureRegion'>
        /// Azure region to hit Api
        /// </param>
        public static PreValidateEnableBackupResponse Validate(this IProtectionIntentOperations operations, string azureRegion, PreValidateEnableBackupRequest parameters)
        {
                return ((IProtectionIntentOperations)operations).ValidateAsync(azureRegion, parameters).GetAwaiter().GetResult();
        }

        /// <summary>
        /// It will validate followings
        /// 1. Vault capacity
        /// 2. VM is already protected
        /// 3. Any VM related configuration passed in properties.
        /// </summary>
        /// <param name='operations'>
        /// The operations group for this extension method.
        /// </param>
        /// <param name='azureRegion'>
        /// Azure region to hit Api
        /// </param>
        /// <param name='cancellationToken'>
        /// The cancellation token.
        /// </param>
        public static async System.Threading.Tasks.Task<PreValidateEnableBackupResponse> ValidateAsync(this IProtectionIntentOperations operations, string azureRegion, PreValidateEnableBackupRequest parameters, System.Threading.CancellationToken cancellationToken = default(System.Threading.CancellationToken))
        {
            using (var _result = await operations.ValidateWithHttpMessagesAsync(azureRegion, parameters, null, cancellationToken).ConfigureAwait(false))
            {
                return _result.Body;
            }
        }
        /// <summary>
        /// Provides the details of the protection intent up item. This is an
        /// asynchronous operation. To know the status of the operation,
        /// call the GetItemOperationResult API.
        /// </summary>
        /// <param name='operations'>
        /// The operations group for this extension method.
        /// </param>
        /// <param name='vaultName'>
        /// The name of the recovery services vault.
        /// </param>
        /// <param name='resourceGroupName'>
        /// The name of the resource group where the recovery services vault is
        /// present.
        /// </param>
        /// <param name='fabricName'>
        /// Fabric name associated with the backed up item.
        /// </param>
        /// <param name='intentObjectName'>
        /// Backed up item name whose details are to be fetched.
        /// </param>
        public static ProtectionIntentResource Get(this IProtectionIntentOperations operations, string vaultName, string resourceGroupName, string fabricName, string intentObjectName)
        {
                return ((IProtectionIntentOperations)operations).GetAsync(vaultName, resourceGroupName, fabricName, intentObjectName).GetAwaiter().GetResult();
        }

        /// <summary>
        /// Provides the details of the protection intent up item. This is an
        /// asynchronous operation. To know the status of the operation,
        /// call the GetItemOperationResult API.
        /// </summary>
        /// <param name='operations'>
        /// The operations group for this extension method.
        /// </param>
        /// <param name='vaultName'>
        /// The name of the recovery services vault.
        /// </param>
        /// <param name='resourceGroupName'>
        /// The name of the resource group where the recovery services vault is
        /// present.
        /// </param>
        /// <param name='fabricName'>
        /// Fabric name associated with the backed up item.
        /// </param>
        /// <param name='intentObjectName'>
        /// Backed up item name whose details are to be fetched.
        /// </param>
        /// <param name='cancellationToken'>
        /// The cancellation token.
        /// </param>
        public static async System.Threading.Tasks.Task<ProtectionIntentResource> GetAsync(this IProtectionIntentOperations operations, string vaultName, string resourceGroupName, string fabricName, string intentObjectName, System.Threading.CancellationToken cancellationToken = default(System.Threading.CancellationToken))
        {
            using (var _result = await operations.GetWithHttpMessagesAsync(vaultName, resourceGroupName, fabricName, intentObjectName, null, cancellationToken).ConfigureAwait(false))
            {
                return _result.Body;
            }
        }
        /// <summary>
        /// Create Intent for Enabling backup of an item. This is a synchronous
        /// operation.
        /// </summary>
        /// <param name='operations'>
        /// The operations group for this extension method.
        /// </param>
        /// <param name='vaultName'>
        /// The name of the recovery services vault.
        /// </param>
        /// <param name='resourceGroupName'>
        /// The name of the resource group where the recovery services vault is
        /// present.
        /// </param>
        /// <param name='fabricName'>
        /// Fabric name associated with the backup item.
        /// </param>
        /// <param name='intentObjectName'>
        /// Intent object name.
        /// </param>
        public static ProtectionIntentResource CreateOrUpdate(this IProtectionIntentOperations operations, string vaultName, string resourceGroupName, string fabricName, string intentObjectName, ProtectionIntentResource parameters)
        {
                return ((IProtectionIntentOperations)operations).CreateOrUpdateAsync(vaultName, resourceGroupName, fabricName, intentObjectName, parameters).GetAwaiter().GetResult();
        }

        /// <summary>
        /// Create Intent for Enabling backup of an item. This is a synchronous
        /// operation.
        /// </summary>
        /// <param name='operations'>
        /// The operations group for this extension method.
        /// </param>
        /// <param name='vaultName'>
        /// The name of the recovery services vault.
        /// </param>
        /// <param name='resourceGroupName'>
        /// The name of the resource group where the recovery services vault is
        /// present.
        /// </param>
        /// <param name='fabricName'>
        /// Fabric name associated with the backup item.
        /// </param>
        /// <param name='intentObjectName'>
        /// Intent object name.
        /// </param>
        /// <param name='cancellationToken'>
        /// The cancellation token.
        /// </param>
        public static async System.Threading.Tasks.Task<ProtectionIntentResource> CreateOrUpdateAsync(this IProtectionIntentOperations operations, string vaultName, string resourceGroupName, string fabricName, string intentObjectName, ProtectionIntentResource parameters, System.Threading.CancellationToken cancellationToken = default(System.Threading.CancellationToken))
        {
            using (var _result = await operations.CreateOrUpdateWithHttpMessagesAsync(vaultName, resourceGroupName, fabricName, intentObjectName, parameters, null, cancellationToken).ConfigureAwait(false))
            {
                return _result.Body;
            }
        }
        /// <summary>
        /// Used to remove intent from an item
        /// </summary>
        /// <param name='operations'>
        /// The operations group for this extension method.
        /// </param>
        /// <param name='vaultName'>
        /// The name of the recovery services vault.
        /// </param>
        /// <param name='resourceGroupName'>
        /// The name of the resource group where the recovery services vault is
        /// present.
        /// </param>
        /// <param name='fabricName'>
        /// Fabric name associated with the intent.
        /// </param>
        /// <param name='intentObjectName'>
        /// Intent to be deleted.
        /// </param>
        public static void Delete(this IProtectionIntentOperations operations, string vaultName, string resourceGroupName, string fabricName, string intentObjectName)
        {
                ((IProtectionIntentOperations)operations).DeleteAsync(vaultName, resourceGroupName, fabricName, intentObjectName).GetAwaiter().GetResult();
        }

        /// <summary>
        /// Used to remove intent from an item
        /// </summary>
        /// <param name='operations'>
        /// The operations group for this extension method.
        /// </param>
        /// <param name='vaultName'>
        /// The name of the recovery services vault.
        /// </param>
        /// <param name='resourceGroupName'>
        /// The name of the resource group where the recovery services vault is
        /// present.
        /// </param>
        /// <param name='fabricName'>
        /// Fabric name associated with the intent.
        /// </param>
        /// <param name='intentObjectName'>
        /// Intent to be deleted.
        /// </param>
        /// <param name='cancellationToken'>
        /// The cancellation token.
        /// </param>
        public static async System.Threading.Tasks.Task DeleteAsync(this IProtectionIntentOperations operations, string vaultName, string resourceGroupName, string fabricName, string intentObjectName, System.Threading.CancellationToken cancellationToken = default(System.Threading.CancellationToken))
        {
            (await operations.DeleteWithHttpMessagesAsync(vaultName, resourceGroupName, fabricName, intentObjectName, null, cancellationToken).ConfigureAwait(false)).Dispose();
        }
    }
}
