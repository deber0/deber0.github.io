---
title: "QGIS & Open Data"
description: "Serving local map data using AWS resources for streaming access to various clients"
status: "In Progress"
technologies: ["QGIS", "AWS", "GIS", "Open Data"]
external_link: "https://www.qgis.org/en/site/"
---

# QGIS & Open Data

Using AWS resources, I have been successful serving local map data for streaming access to various requesting clients.

## Project Overview

This project focuses on leveraging open-source Geographic Information System (GIS) tools to create accessible mapping solutions. By combining QGIS with cloud infrastructure, the goal is to democratize access to geospatial data and analysis tools.

## Technologies Used

- **QGIS**: Free and Open Source Geographic Information System
- **AWS**: Cloud infrastructure for hosting and data serving
- **Open Data**: Publicly available geospatial datasets
- **Web Services**: RESTful APIs for data access

## Current Status

### Phase 1: Core Infrastructure ✅ Completed
- AWS EC2 instance deployment and configuration
- QGIS Server installation and basic WMS/WFS setup
- Apache web server integration with FastCGI
- SSL certificate implementation for secure connections

### Phase 2: Data Integration 🔄 In Progress
- **Open Data Sources**: Integration with USGS, Census Bureau, and OpenStreetMap
- **Database Optimization**: PostGIS performance tuning for large datasets
- **API Development**: RESTful endpoints for programmatic access
- **Documentation**: Swagger/OpenAPI specification creation

### Phase 3: Client Applications 📋 Planned
- Web-based mapping interface using Leaflet.js
- Mobile application for field data collection
- Desktop GIS plugin for direct QGIS integration
- Python SDK for developers

### Current Metrics
- **Data Volume**: 2.3TB of geospatial datasets served
- **API Requests**: 10,000+ monthly requests
- **Coverage Area**: Continental United States with selected global datasets
- **Update Frequency**: Daily automated synchronization with source APIs

## Resources

- [QGIS - A Free and Open Source Geographic Information System](https://www.qgis.org/en/site/)
- Related: [AWS Infrastructure Project](/projects/aws/)

## Future Enhancements

- Enhanced API documentation
- Client SDK development
- Real-time data streaming capabilities
- Mobile client applications