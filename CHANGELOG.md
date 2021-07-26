# Changelog
All notable changes to this project will be documented in this file.

## [1.0.1] - 2021-08-26
### Changed
execute method
- The execute method now returns the UUID of the request, which can be used to pinpoint a specific request. It can be used later to cancel a network operation
- The execute method does not convert the received data from JSON to the response model, but returns the data received from the server in raw form (the mapper itself is placed in the ACUseCase library).

## [1.0.0] - 2021-07-02
### Added
- Updated version of the network layer

### Changed
- Removed links to external pods
- Distribution: Swift Package Manager

### Fixed
- Logging recieveData
