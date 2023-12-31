// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.8.21;

// EAS (ETHEREUM ATTESTATION SERVICE)
address constant EAS_OP = 0x4200000000000000000000000000000000000021; // Any OP Stack deployed
address constant EAS_SCROLL_SEPOLIA = 0x4200000000000000000000000000000000000021;
address constant EAS_POLYGON_MUMBAI = 0x4200000000000000000000000000000000000021;

// TOKENBOUND (FUTURE PRIMTIVE)
address constant TOKENBOUND_REGISTRY = 0x002c0c13181038780F552f0eC1B72e8C720147E6; // Same address on all EVM chains
address constant TOKENBOUND_ACCOUNT = 0x9FFDEb36540e1a12b1F27751508715174122C090; // Same address on all EVM chains

enum TransferStatus {
    STARTED,
    APPROVED,
    COMPLETED,
    FAILED
}

struct GoodTransferSchema {
    string nfcId; // DiD of the NFC
    address nfcIssuer; // Address of the NFC issuer
    address good; // ERC-6551 contract address
    TransferStatus status;
}