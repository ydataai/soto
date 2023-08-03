//===----------------------------------------------------------------------===//
//
// This source file is part of the Soto for AWS open source project
//
// Copyright (c) 2017-2023 the Soto project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Soto project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/soto-project/soto-codegenerator.
// DO NOT EDIT.

@_exported import SotoCore

/// Service object for interacting with AWS PaymentCryptographyData service.
///
/// You use the Amazon Web Services Payment Cryptography Data Plane to manage how encryption keys are used for payment-related transaction processing and associated cryptographic operations. You can encrypt, decrypt, generate, verify, and translate payment-related cryptographic operations in Amazon Web Services Payment Cryptography. For more information, see Data operations in the Amazon Web Services Payment Cryptography User Guide. To manage your encryption keys, you use the Amazon Web Services Payment Cryptography Control Plane. You can create, import, export, share, manage, and delete keys. You can also manage Identity and Access Management (IAM) policies for keys.
public struct PaymentCryptographyData: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the PaymentCryptographyData client
    /// - parameters:
    ///     - client: AWSClient used to process requests
    ///     - region: Region of server you want to communicate with. This will override the partition parameter.
    ///     - partition: AWS partition where service resides, standard (.aws), china (.awscn), government (.awsusgov).
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - middleware: Middleware chain used to edit requests before they are sent and responses before they are decoded 
    ///     - timeout: Timeout value for HTTP requests
    ///     - byteBufferAllocator: Allocator for ByteBuffers
    ///     - options: Service options
    public init(
        client: AWSClient,
        region: SotoCore.Region? = nil,
        partition: AWSPartition = .aws,
        endpoint: String? = nil,
        middleware: AWSMiddlewareProtocol? = nil,
        timeout: TimeAmount? = nil,
        byteBufferAllocator: ByteBufferAllocator = ByteBufferAllocator(),
        options: AWSServiceConfig.Options = []
    ) {
        self.client = client
        self.config = AWSServiceConfig(
            region: region,
            partition: region?.partition ?? partition,
            serviceName: "PaymentCryptographyData",
            serviceIdentifier: "dataplane.payment-cryptography",
            signingName: "payment-cryptography",
            serviceProtocol: .restjson,
            apiVersion: "2022-02-03",
            endpoint: endpoint,
            errorType: PaymentCryptographyDataErrorType.self,
            middleware: middleware,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }





    // MARK: API Calls

    /// Decrypts ciphertext data to plaintext using symmetric, asymmetric, or DUKPT data encryption key. For more information, see Decrypt data in the Amazon Web Services Payment Cryptography User Guide. You can use an encryption key generated within Amazon Web Services Payment Cryptography, or you can import your own encryption key by calling ImportKey. For this operation, the key must have KeyModesOfUse set to Decrypt. In asymmetric decryption, Amazon Web Services Payment Cryptography decrypts the ciphertext using the private component of the asymmetric encryption key pair. For data encryption outside of Amazon Web Services Payment Cryptography, you can export the public component of the asymmetric key pair by calling GetPublicCertificate. For symmetric and DUKPT decryption, Amazon Web Services Payment Cryptography supports TDES and AES algorithms. For asymmetric decryption, Amazon Web Services Payment Cryptography supports RSA. When you use DUKPT, for TDES algorithm, the ciphertext data length must be a multiple of 16 bytes. For AES algorithm, the ciphertext data length must be a multiple of 32 bytes. For information about valid keys for this operation, see Understanding key attributes and Key types for specific data operations in the Amazon Web Services Payment Cryptography User Guide.   Cross-account use: This operation can't be used across different Amazon Web Services accounts.  Related operations:     EncryptData     GetPublicCertificate     ImportKey
    @Sendable
    public func decryptData(_ input: DecryptDataInput, logger: Logger = AWSClient.loggingDisabled) async throws -> DecryptDataOutput {
        return try await self.client.execute(
            operation: "DecryptData", 
            path: "/keys/{KeyIdentifier}/decrypt", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Encrypts plaintext data to ciphertext using symmetric, asymmetric, or DUKPT data encryption key. For more information, see Encrypt data in the Amazon Web Services Payment Cryptography User Guide. You can generate an encryption key within Amazon Web Services Payment Cryptography by calling CreateKey. You can import your own encryption key by calling ImportKey. For this operation, the key must have KeyModesOfUse set to Encrypt. In asymmetric encryption, plaintext is encrypted using public component. You can import the public component of an asymmetric key pair created outside Amazon Web Services Payment Cryptography by calling ImportKey).  for symmetric and DUKPT encryption, Amazon Web Services Payment Cryptography supports TDES and AES algorithms. For asymmetric encryption, Amazon Web Services Payment Cryptography supports RSA. To encrypt using DUKPT, you must already have a DUKPT key in your account with KeyModesOfUse set to DeriveKey, or you can generate a new DUKPT key by calling CreateKey. For information about valid keys for this operation, see Understanding key attributes and Key types for specific data operations in the Amazon Web Services Payment Cryptography User Guide.  Cross-account use: This operation can't be used across different Amazon Web Services accounts.  Related operations:     DecryptData     GetPublicCertificate     ImportKey     ReEncryptData
    @Sendable
    public func encryptData(_ input: EncryptDataInput, logger: Logger = AWSClient.loggingDisabled) async throws -> EncryptDataOutput {
        return try await self.client.execute(
            operation: "EncryptData", 
            path: "/keys/{KeyIdentifier}/encrypt", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Generates card-related validation data using algorithms such as Card Verification Values (CVV/CVV2), Dynamic Card Verification Values (dCVV/dCVV2), or Card Security Codes (CSC). For more information, see Generate card data in the Amazon Web Services Payment Cryptography User Guide. This operation generates a CVV or CSC value that is printed on a payment credit or debit card during card production. The CVV or CSC, PAN (Primary Account Number) and expiration date of the card are required to check its validity during transaction processing. To begin this operation, a CVK (Card Verification Key) encryption key is required. You can use CreateKey or ImportKey to establish a CVK within Amazon Web Services Payment Cryptography. The KeyModesOfUse should be set to Generate and Verify for a CVK encryption key.  For information about valid keys for this operation, see Understanding key attributes and Key types for specific data operations in the Amazon Web Services Payment Cryptography User Guide.   Cross-account use: This operation can't be used across different Amazon Web Services accounts.  Related operations:     ImportKey     VerifyCardValidationData
    @Sendable
    public func generateCardValidationData(_ input: GenerateCardValidationDataInput, logger: Logger = AWSClient.loggingDisabled) async throws -> GenerateCardValidationDataOutput {
        return try await self.client.execute(
            operation: "GenerateCardValidationData", 
            path: "/cardvalidationdata/generate", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Generates a Message Authentication Code (MAC) cryptogram within Amazon Web Services Payment Cryptography.  You can use this operation when keys won't be shared but mutual data is present on both ends for validation. In this case, known data values are used to generate a MAC on both ends for comparision without sending or receiving data in ciphertext or plaintext. You can use this operation to generate a DUPKT, HMAC or EMV MAC by setting generation attributes and algorithm to the associated values. The MAC generation encryption key must have valid values for KeyUsage such as TR31_M7_HMAC_KEY for HMAC generation, and they key must have KeyModesOfUse set to Generate and Verify. For information about valid keys for this operation, see Understanding key attributes and Key types for specific data operations in the Amazon Web Services Payment Cryptography User Guide.   Cross-account use: This operation can't be used across different Amazon Web Services accounts.  Related operations:     VerifyMac
    @Sendable
    public func generateMac(_ input: GenerateMacInput, logger: Logger = AWSClient.loggingDisabled) async throws -> GenerateMacOutput {
        return try await self.client.execute(
            operation: "GenerateMac", 
            path: "/mac/generate", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Generates pin-related data such as PIN, PIN Verification Value (PVV), PIN Block, and PIN Offset during new card issuance or reissuance. For more information, see Generate PIN data in the Amazon Web Services Payment Cryptography User Guide. PIN data is never transmitted in clear to or from Amazon Web Services Payment Cryptography. This operation generates PIN, PVV, or PIN Offset and then encrypts it using Pin Encryption Key (PEK) to create an EncryptedPinBlock for transmission from Amazon Web Services Payment Cryptography. This operation uses a separate Pin Verification Key (PVK) for VISA PVV generation.  For information about valid keys for this operation, see Understanding key attributes and Key types for specific data operations in the Amazon Web Services Payment Cryptography User Guide.  Cross-account use: This operation can't be used across different Amazon Web Services accounts.  Related operations:     GenerateCardValidationData     TranslatePinData     VerifyPinData
    @Sendable
    public func generatePinData(_ input: GeneratePinDataInput, logger: Logger = AWSClient.loggingDisabled) async throws -> GeneratePinDataOutput {
        return try await self.client.execute(
            operation: "GeneratePinData", 
            path: "/pindata/generate", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Re-encrypt ciphertext using DUKPT, Symmetric and Asymmetric  Data Encryption Keys.  You can either generate an encryption key within Amazon Web Services Payment Cryptography by calling CreateKey or import your own encryption key by calling ImportKey. The KeyArn for use with this operation must be in a compatible key state with KeyModesOfUse set to Encrypt. In asymmetric encryption, ciphertext is encrypted using public component (imported by calling ImportKey) of the asymmetric key pair created outside of Amazon Web Services Payment Cryptography.  For symmetric and DUKPT encryption, Amazon Web Services Payment Cryptography supports TDES and AES algorithms. For asymmetric encryption, Amazon Web Services Payment Cryptography supports RSA. To encrypt using DUKPT, a DUKPT key must already exist within your account with KeyModesOfUse set to DeriveKey or a new DUKPT can be generated by calling CreateKey. For information about valid keys for this operation, see Understanding key attributes and Key types for specific data operations in the Amazon Web Services Payment Cryptography User Guide.   Cross-account use: This operation can't be used across different Amazon Web Services accounts.  Related operations:     DecryptData     EncryptData     GetPublicCertificate     ImportKey
    @Sendable
    public func reEncryptData(_ input: ReEncryptDataInput, logger: Logger = AWSClient.loggingDisabled) async throws -> ReEncryptDataOutput {
        return try await self.client.execute(
            operation: "ReEncryptData", 
            path: "/keys/{IncomingKeyIdentifier}/reencrypt", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Translates encrypted PIN block from and to ISO 9564 formats 0,1,3,4. For more information, see Translate PIN data in the Amazon Web Services Payment Cryptography User Guide. PIN block translation involves changing the encrytion of PIN block from one encryption key to another encryption key and changing PIN block format from one to another without PIN block data leaving Amazon Web Services Payment Cryptography. The encryption key transformation can be from PEK (Pin Encryption Key) to BDK (Base Derivation Key) for DUKPT or from BDK for DUKPT to PEK. Amazon Web Services Payment Cryptography supports TDES and AES key derivation type for DUKPT tranlations. You can use this operation for P2PE (Point to Point Encryption) use cases where the encryption keys should change but the processing system either does not need to, or is not permitted to, decrypt the data. The allowed combinations of PIN block format translations are guided by PCI. It is important to note that not all encrypted PIN block formats (example, format 1) require PAN (Primary Account Number) as input. And as such, PIN block format that requires PAN (example, formats 0,3,4) cannot be translated to a format (format 1) that does not require a PAN for generation.  For information about valid keys for this operation, see Understanding key attributes and Key types for specific data operations in the Amazon Web Services Payment Cryptography User Guide.  At this time, Amazon Web Services Payment Cryptography does not support translations to PIN format 4.   Cross-account use: This operation can't be used across different Amazon Web Services accounts.  Related operations:     GeneratePinData     VerifyPinData
    @Sendable
    public func translatePinData(_ input: TranslatePinDataInput, logger: Logger = AWSClient.loggingDisabled) async throws -> TranslatePinDataOutput {
        return try await self.client.execute(
            operation: "TranslatePinData", 
            path: "/pindata/translate", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Verifies Authorization Request Cryptogram (ARQC) for a EMV chip payment card authorization. For more information, see Verify auth request cryptogram in the Amazon Web Services Payment Cryptography User Guide. ARQC generation is done outside of Amazon Web Services Payment Cryptography and is typically generated on a point of sale terminal for an EMV chip card to obtain payment authorization during transaction time. For ARQC verification, you must first import the ARQC generated outside of Amazon Web Services Payment Cryptography by calling ImportKey. This operation uses the imported ARQC and an major encryption key (DUKPT) created by calling CreateKey to either provide a boolean ARQC verification result or provide an APRC (Authorization Response Cryptogram) response using Method 1 or Method 2. The ARPC_METHOD_1 uses AuthResponseCode to generate ARPC and ARPC_METHOD_2 uses CardStatusUpdate to generate ARPC.  For information about valid keys for this operation, see Understanding key attributes and Key types for specific data operations in the Amazon Web Services Payment Cryptography User Guide.  Cross-account use: This operation can't be used across different Amazon Web Services accounts.  Related operations:     VerifyCardValidationData     VerifyPinData
    @Sendable
    public func verifyAuthRequestCryptogram(_ input: VerifyAuthRequestCryptogramInput, logger: Logger = AWSClient.loggingDisabled) async throws -> VerifyAuthRequestCryptogramOutput {
        return try await self.client.execute(
            operation: "VerifyAuthRequestCryptogram", 
            path: "/cryptogram/verify", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Verifies card-related validation data using algorithms such as Card Verification Values (CVV/CVV2), Dynamic Card Verification Values (dCVV/dCVV2) and Card Security Codes (CSC). For more information, see Verify card data in the Amazon Web Services Payment Cryptography User Guide. This operation validates the CVV or CSC codes that is printed on a payment credit or debit card during card payment transaction. The input values are typically provided as part of an inbound transaction to an issuer or supporting platform partner. Amazon Web Services Payment Cryptography uses CVV or CSC, PAN (Primary Account Number) and expiration date of the card to check its validity during transaction processing. In this operation, the CVK (Card Verification Key) encryption key for use with card data verification is same as the one in used for GenerateCardValidationData.  For information about valid keys for this operation, see Understanding key attributes and Key types for specific data operations in the Amazon Web Services Payment Cryptography User Guide.   Cross-account use: This operation can't be used across different Amazon Web Services accounts.  Related operations:     GenerateCardValidationData     VerifyAuthRequestCryptogram     VerifyPinData
    @Sendable
    public func verifyCardValidationData(_ input: VerifyCardValidationDataInput, logger: Logger = AWSClient.loggingDisabled) async throws -> VerifyCardValidationDataOutput {
        return try await self.client.execute(
            operation: "VerifyCardValidationData", 
            path: "/cardvalidationdata/verify", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Verifies a Message Authentication Code (MAC).  You can use this operation when keys won't be shared but mutual data is present on both ends for validation. In this case, known data values are used to generate a MAC on both ends for verification without sending or receiving data in ciphertext or plaintext. You can use this operation to verify a DUPKT, HMAC or EMV MAC by setting generation attributes and algorithm to the associated values. Use the same encryption key for MAC verification as you use for GenerateMac.  For information about valid keys for this operation, see Understanding key attributes and Key types for specific data operations in the Amazon Web Services Payment Cryptography User Guide.   Cross-account use: This operation can't be used across different Amazon Web Services accounts.  Related operations:     GenerateMac
    @Sendable
    public func verifyMac(_ input: VerifyMacInput, logger: Logger = AWSClient.loggingDisabled) async throws -> VerifyMacOutput {
        return try await self.client.execute(
            operation: "VerifyMac", 
            path: "/mac/verify", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Verifies pin-related data such as PIN and PIN Offset using algorithms including VISA PVV and IBM3624. For more information, see Verify PIN data in the Amazon Web Services Payment Cryptography User Guide. This operation verifies PIN data for user payment card. A card holder PIN data is never transmitted in clear to or from Amazon Web Services Payment Cryptography. This operation uses PIN Verification Key (PVK) for PIN or PIN Offset generation and then encrypts it using PIN Encryption Key (PEK) to create an EncryptedPinBlock for transmission from Amazon Web Services Payment Cryptography.   For information about valid keys for this operation, see Understanding key attributes and Key types for specific data operations in the Amazon Web Services Payment Cryptography User Guide.   Cross-account use: This operation can't be used across different Amazon Web Services accounts.  Related operations:     GeneratePinData     TranslatePinData
    @Sendable
    public func verifyPinData(_ input: VerifyPinDataInput, logger: Logger = AWSClient.loggingDisabled) async throws -> VerifyPinDataOutput {
        return try await self.client.execute(
            operation: "VerifyPinData", 
            path: "/pindata/verify", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }
}

extension PaymentCryptographyData {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are not public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: PaymentCryptographyData, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}
