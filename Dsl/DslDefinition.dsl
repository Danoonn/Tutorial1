<?xml version="1.0" encoding="utf-8"?>
<Dsl xmlns:dm0="http://schemas.microsoft.com/VisualStudio/2008/DslTools/Core" dslVersion="1.0.0.0" Id="b0542dbd-fb5b-4551-bd3c-9cc85f96a49b" Description="Description for Company.Tutorial1.Tutorial1" Name="Tutorial1" DisplayName="Tutorial1" Namespace="Company.Tutorial1" ProductName="Tutorial1" CompanyName="Company" PackageGuid="c133594e-9f6e-4202-b9f8-7b14fa062c5c" PackageNamespace="Company.Tutorial1" xmlns="http://schemas.microsoft.com/VisualStudio/2005/DslTools/DslDefinitionModel">
  <Classes>
    <DomainClass Id="52d93a6e-3851-496f-874d-850262193724" Description="The root in which all other elements are embedded. Appears as a diagram." Name="World" DisplayName="World" Namespace="Company.Tutorial1">
      <ElementMergeDirectives>
        <ElementMergeDirective>
          <Notes>Creates an embedding link when an element is dropped onto a model. </Notes>
          <Index>
            <DomainClassMoniker Name="Country" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>WorldHasCountries.Elements</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
      </ElementMergeDirectives>
    </DomainClass>
    <DomainClass Id="1b5962b9-3941-4809-bf0a-fe91c843b475" Description="Elements embedded in the model. Appear as boxes on the diagram." Name="Country" DisplayName="Country" Namespace="Company.Tutorial1">
      <Properties>
        <DomainProperty Id="99a2d3f8-a2c2-4857-8069-12a860a65bc7" Description="Description for Company.Tutorial1.Country.Name" Name="Name" DisplayName="Name" DefaultValue="" IsElementName="true">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="750a22bf-c668-4d19-8905-2700e106efe2" Description="Description for Company.Tutorial1.Country.Flag" Name="Flag" DisplayName="Flag">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
      <ElementMergeDirectives>
        <ElementMergeDirective>
          <Index>
            <DomainClassMoniker Name="City" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>CountryHasCity.City</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
      </ElementMergeDirectives>
    </DomainClass>
    <DomainClass Id="707276c5-ac10-49ab-926a-a2121aa177ad" Description="Description for Company.Tutorial1.City" Name="City" DisplayName="City" Namespace="Company.Tutorial1">
      <Properties>
        <DomainProperty Id="5f4aca3f-f553-44e1-ac25-f46024b4eaaa" Description="Description for Company.Tutorial1.City.Name" Name="Name" DisplayName="Name">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="1198aca0-184d-45ce-b85a-6b46644d3c2e" Description="Description for Company.Tutorial1.City.Population" Name="Population" DisplayName="Population">
          <Type>
            <ExternalTypeMoniker Name="/System/UInt32" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="d6663c53-a524-4222-89ed-7821504cfc2a" Description="Description for Company.Tutorial1.City.Location" Name="Location" DisplayName="Location">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
      <ElementMergeDirectives>
        <ElementMergeDirective>
          <Index>
            <DomainClassMoniker Name="Person" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>CityHasPerson.Person</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
      </ElementMergeDirectives>
    </DomainClass>
    <DomainClass Id="6a3a0f3a-0b1b-4ac9-ab4e-adcecaaa135d" Description="Description for Company.Tutorial1.Person" Name="Person" DisplayName="Person" Namespace="Company.Tutorial1">
      <Properties>
        <DomainProperty Id="fe275c6f-3bc8-41aa-8b23-b6e8b08c1507" Description="Description for Company.Tutorial1.Person.Name" Name="Name" DisplayName="Name">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="038857b6-e306-4113-828b-aca106936234" Description="Description for Company.Tutorial1.Person.Gender" Name="Gender" DisplayName="Gender">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="9b9f6582-bdf3-4239-9b91-a3dd251c2b74" Description="Description for Company.Tutorial1.Person.Age" Name="Age" DisplayName="Age">
          <Type>
            <ExternalTypeMoniker Name="/System/UInt16" />
          </Type>
        </DomainProperty>
      </Properties>
    </DomainClass>
  </Classes>
  <Relationships>
    <DomainRelationship Id="9f70f966-5dfc-4e67-ac58-624fffbdd367" Description="Embedding relationship between the Model and Elements" Name="WorldHasCountries" DisplayName="World Has Countries" Namespace="Company.Tutorial1" IsEmbedding="true">
      <Source>
        <DomainRole Id="7d908918-12bb-4d98-8006-dbdbf8df96d5" Description="" Name="World" DisplayName="World" PropertyName="Elements" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="Elements">
          <RolePlayer>
            <DomainClassMoniker Name="World" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="3f65266e-6484-4a37-89b1-13710bc29c83" Description="" Name="Element" DisplayName="Element" PropertyName="World" Multiplicity="One" PropagatesDelete="true" PropertyDisplayName="World">
          <RolePlayer>
            <DomainClassMoniker Name="Country" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="0353c5f2-5fd6-4ccd-885e-b77f13073530" Description="Reference relationship between Elements." Name="CountryReferencesTargets" DisplayName="Country References Targets" Namespace="Company.Tutorial1">
      <Source>
        <DomainRole Id="d0659b1c-ff09-4176-b150-423e1fa9a019" Description="Description for Company.Tutorial1.ExampleRelationship.Target" Name="Source" DisplayName="Source" PropertyName="Targets" PropertyDisplayName="Targets">
          <RolePlayer>
            <DomainClassMoniker Name="Country" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="b049ab94-90fd-4945-be6d-453cd1c5860a" Description="Description for Company.Tutorial1.ExampleRelationship.Source" Name="Target" DisplayName="Target" PropertyName="Sources" PropertyDisplayName="Sources">
          <RolePlayer>
            <DomainClassMoniker Name="Country" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="0cb6021a-96d9-4f0b-a312-209e9d43b938" Description="Description for Company.Tutorial1.CountryHasCity" Name="CountryHasCity" DisplayName="Country Has City" Namespace="Company.Tutorial1" IsEmbedding="true">
      <Source>
        <DomainRole Id="3f8ad707-b24c-4d03-a763-59f04e85af45" Description="Description for Company.Tutorial1.CountryHasCity.Country" Name="Country" DisplayName="Country" PropertyName="City" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="City">
          <RolePlayer>
            <DomainClassMoniker Name="Country" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="f35c5289-41b5-4c30-acd7-c11eaa0a180b" Description="Description for Company.Tutorial1.CountryHasCity.City" Name="City" DisplayName="City" PropertyName="Country" Multiplicity="One" PropagatesDelete="true" PropertyDisplayName="Country">
          <RolePlayer>
            <DomainClassMoniker Name="City" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="972271f8-6371-4455-9033-b95f73ed9d7a" Description="Description for Company.Tutorial1.CityHasPerson" Name="CityHasPerson" DisplayName="City Has Person" Namespace="Company.Tutorial1" IsEmbedding="true">
      <Source>
        <DomainRole Id="7cc367d7-5109-41f4-ae71-4df8174ac057" Description="Description for Company.Tutorial1.CityHasPerson.City" Name="City" DisplayName="City" PropertyName="Person" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="Person">
          <RolePlayer>
            <DomainClassMoniker Name="City" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="1de596ec-93b9-4c0d-9578-b6d160a298b2" Description="Description for Company.Tutorial1.CityHasPerson.Person" Name="Person" DisplayName="Person" PropertyName="City" Multiplicity="One" PropagatesDelete="true" PropertyDisplayName="City">
          <RolePlayer>
            <DomainClassMoniker Name="Person" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="e2cbd5ef-a3b8-4aa8-b8b4-b4519375f56b" Description="Description for Company.Tutorial1.CityReferencesTargetCity" Name="CityReferencesTargetCity" DisplayName="City References Target City" Namespace="Company.Tutorial1">
      <Source>
        <DomainRole Id="3c63e2fb-e4c7-4c15-822d-51cdcb243da0" Description="Description for Company.Tutorial1.CityReferencesTargetCity.SourceCity" Name="SourceCity" DisplayName="Source City" PropertyName="TargetCity" PropertyDisplayName="Target City">
          <RolePlayer>
            <DomainClassMoniker Name="City" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="08a411c5-f4b3-4aee-9ca6-e43620a6fe0f" Description="Description for Company.Tutorial1.CityReferencesTargetCity.TargetCity" Name="TargetCity" DisplayName="Target City" PropertyName="SourceCity" PropertyDisplayName="Source City">
          <RolePlayer>
            <DomainClassMoniker Name="City" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
  </Relationships>
  <Types>
    <ExternalType Name="DateTime" Namespace="System" />
    <ExternalType Name="String" Namespace="System" />
    <ExternalType Name="Int16" Namespace="System" />
    <ExternalType Name="Int32" Namespace="System" />
    <ExternalType Name="Int64" Namespace="System" />
    <ExternalType Name="UInt16" Namespace="System" />
    <ExternalType Name="UInt32" Namespace="System" />
    <ExternalType Name="UInt64" Namespace="System" />
    <ExternalType Name="SByte" Namespace="System" />
    <ExternalType Name="Byte" Namespace="System" />
    <ExternalType Name="Double" Namespace="System" />
    <ExternalType Name="Single" Namespace="System" />
    <ExternalType Name="Guid" Namespace="System" />
    <ExternalType Name="Boolean" Namespace="System" />
    <ExternalType Name="Char" Namespace="System" />
  </Types>
  <Shapes>
    <GeometryShape Id="e44413e9-aa34-4af1-99ab-4761928e1c70" Description="Shape used to represent ExampleElements on a Diagram." Name="CountryShape" DisplayName="Country Shape" Namespace="Company.Tutorial1" FixedTooltipText="Country Shape" TextColor="Navy" FillColor="255, 128, 0" OutlineColor="113, 111, 110" InitialWidth="2" InitialHeight="0.75" OutlineThickness="0.01" Geometry="Ellipse">
      <Notes>The shape has a text decorator used to display the Name property of the mapped ExampleElement.</Notes>
      <ShapeHasDecorators Position="Center" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="CountryName" DisplayName="Country Name" DefaultText="CountryName" />
      </ShapeHasDecorators>
    </GeometryShape>
    <GeometryShape Id="5ef0cd1a-ffe2-46af-bbfa-5d06c294b547" Description="Description for Company.Tutorial1.PersonShape" Name="PersonShape" DisplayName="Person Shape" Namespace="Company.Tutorial1" FixedTooltipText="Person Shape" TextColor="Navy" FillColor="IndianRed" InitialHeight="1" Geometry="Rectangle">
      <ShapeHasDecorators Position="InnerTopLeft" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="PersonName" DisplayName="Person Name" DefaultText="PersonName" />
      </ShapeHasDecorators>
    </GeometryShape>
    <GeometryShape Id="5d9aa77a-5d7e-44a5-aec7-797ba9997e26" Description="Description for Company.Tutorial1.CityShape" Name="CityShape" DisplayName="City Shape" Namespace="Company.Tutorial1" FixedTooltipText="City Shape" FillColor="Green" InitialHeight="1" Geometry="Rectangle">
      <ShapeHasDecorators Position="InnerTopLeft" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="Name" DisplayName="Name" DefaultText="Name" />
      </ShapeHasDecorators>
      <ShapeHasDecorators Position="InnerTopRight" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="Location" DisplayName="Location" DefaultText="Location" />
      </ShapeHasDecorators>
      <ShapeHasDecorators Position="InnerBottomLeft" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="Population" DisplayName="Population" DefaultText="Population" />
      </ShapeHasDecorators>
    </GeometryShape>
  </Shapes>
  <Connectors>
    <Connector Id="2b0643bc-258b-49bb-aac0-ea57d5aeb189" Description="Connector between the ExampleShapes. Represents ExampleRelationships on the Diagram." Name="ExampleConnector" DisplayName="Example Connector" Namespace="Company.Tutorial1" FixedTooltipText="Example Connector" Color="113, 111, 110" TargetEndStyle="EmptyArrow" Thickness="0.01" />
    <Connector Id="c669f64b-b42c-475c-9e89-38d73c5260af" Description="Description for Company.Tutorial1.CityConnector" Name="CityConnector" DisplayName="City Connector" Namespace="Company.Tutorial1" FixedTooltipText="City Connector">
      <ConnectorHasDecorators Position="SourceTop" OffsetFromShape="0" OffsetFromLine="0">
        <TextDecorator Name="CityConnector" DisplayName="City Connector" DefaultText="CityConnector" />
      </ConnectorHasDecorators>
    </Connector>
  </Connectors>
  <XmlSerializationBehavior Name="Tutorial1SerializationBehavior" Namespace="Company.Tutorial1">
    <ClassData>
      <XmlClassData TypeName="World" MonikerAttributeName="" SerializeId="true" MonikerElementName="worldMoniker" ElementName="world" MonikerTypeName="WorldMoniker">
        <DomainClassMoniker Name="World" />
        <ElementData>
          <XmlRelationshipData RoleElementName="elements">
            <DomainRelationshipMoniker Name="WorldHasCountries" />
          </XmlRelationshipData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="Country" MonikerAttributeName="name" SerializeId="true" MonikerElementName="countryMoniker" ElementName="country" MonikerTypeName="CountryMoniker">
        <DomainClassMoniker Name="Country" />
        <ElementData>
          <XmlPropertyData XmlName="name" IsMonikerKey="true">
            <DomainPropertyMoniker Name="Country/Name" />
          </XmlPropertyData>
          <XmlRelationshipData RoleElementName="targets">
            <DomainRelationshipMoniker Name="CountryReferencesTargets" />
          </XmlRelationshipData>
          <XmlPropertyData XmlName="flag">
            <DomainPropertyMoniker Name="Country/Flag" />
          </XmlPropertyData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="city">
            <DomainRelationshipMoniker Name="CountryHasCity" />
          </XmlRelationshipData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="WorldHasCountries" MonikerAttributeName="" SerializeId="true" MonikerElementName="worldHasCountriesMoniker" ElementName="worldHasCountries" MonikerTypeName="WorldHasCountriesMoniker">
        <DomainRelationshipMoniker Name="WorldHasCountries" />
      </XmlClassData>
      <XmlClassData TypeName="CountryReferencesTargets" MonikerAttributeName="" SerializeId="true" MonikerElementName="countryReferencesTargetsMoniker" ElementName="countryReferencesTargets" MonikerTypeName="CountryReferencesTargetsMoniker">
        <DomainRelationshipMoniker Name="CountryReferencesTargets" />
      </XmlClassData>
      <XmlClassData TypeName="CountryShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="countryShapeMoniker" ElementName="countryShape" MonikerTypeName="CountryShapeMoniker">
        <GeometryShapeMoniker Name="CountryShape" />
      </XmlClassData>
      <XmlClassData TypeName="ExampleConnector" MonikerAttributeName="" SerializeId="true" MonikerElementName="exampleConnectorMoniker" ElementName="exampleConnector" MonikerTypeName="ExampleConnectorMoniker">
        <ConnectorMoniker Name="ExampleConnector" />
      </XmlClassData>
      <XmlClassData TypeName="Tutorial1Diagram" MonikerAttributeName="" SerializeId="true" MonikerElementName="tutorial1DiagramMoniker" ElementName="tutorial1Diagram" MonikerTypeName="Tutorial1DiagramMoniker">
        <DiagramMoniker Name="Tutorial1Diagram" />
      </XmlClassData>
      <XmlClassData TypeName="City" MonikerAttributeName="" SerializeId="true" MonikerElementName="cityMoniker" ElementName="city" MonikerTypeName="CityMoniker">
        <DomainClassMoniker Name="City" />
        <ElementData>
          <XmlPropertyData XmlName="name">
            <DomainPropertyMoniker Name="City/Name" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="population">
            <DomainPropertyMoniker Name="City/Population" />
          </XmlPropertyData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="person">
            <DomainRelationshipMoniker Name="CityHasPerson" />
          </XmlRelationshipData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="targetCity">
            <DomainRelationshipMoniker Name="CityReferencesTargetCity" />
          </XmlRelationshipData>
          <XmlPropertyData XmlName="location">
            <DomainPropertyMoniker Name="City/Location" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="CountryHasCity" MonikerAttributeName="" SerializeId="true" MonikerElementName="countryHasCityMoniker" ElementName="countryHasCity" MonikerTypeName="CountryHasCityMoniker">
        <DomainRelationshipMoniker Name="CountryHasCity" />
      </XmlClassData>
      <XmlClassData TypeName="Person" MonikerAttributeName="" SerializeId="true" MonikerElementName="personMoniker" ElementName="person" MonikerTypeName="PersonMoniker">
        <DomainClassMoniker Name="Person" />
        <ElementData>
          <XmlPropertyData XmlName="name">
            <DomainPropertyMoniker Name="Person/Name" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="gender">
            <DomainPropertyMoniker Name="Person/Gender" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="age">
            <DomainPropertyMoniker Name="Person/Age" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="CityConnector" MonikerAttributeName="" SerializeId="true" MonikerElementName="cityConnectorMoniker" ElementName="cityConnector" MonikerTypeName="CityConnectorMoniker">
        <ConnectorMoniker Name="CityConnector" />
      </XmlClassData>
      <XmlClassData TypeName="CityHasPerson" MonikerAttributeName="" SerializeId="true" MonikerElementName="cityHasPersonMoniker" ElementName="cityHasPerson" MonikerTypeName="CityHasPersonMoniker">
        <DomainRelationshipMoniker Name="CityHasPerson" />
      </XmlClassData>
      <XmlClassData TypeName="CityReferencesTargetCity" MonikerAttributeName="" SerializeId="true" MonikerElementName="cityReferencesTargetCityMoniker" ElementName="cityReferencesTargetCity" MonikerTypeName="CityReferencesTargetCityMoniker">
        <DomainRelationshipMoniker Name="CityReferencesTargetCity" />
      </XmlClassData>
      <XmlClassData TypeName="PersonShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="personShapeMoniker" ElementName="personShape" MonikerTypeName="PersonShapeMoniker">
        <GeometryShapeMoniker Name="PersonShape" />
      </XmlClassData>
      <XmlClassData TypeName="CityShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="cityShapeMoniker" ElementName="cityShape" MonikerTypeName="CityShapeMoniker">
        <GeometryShapeMoniker Name="CityShape" />
      </XmlClassData>
    </ClassData>
  </XmlSerializationBehavior>
  <ExplorerBehavior Name="Tutorial1Explorer" />
  <ConnectionBuilders>
    <ConnectionBuilder Name="CountryReferencesTargetsBuilder">
      <Notes>Provides for the creation of an ExampleRelationship by pointing at two ExampleElements.</Notes>
      <LinkConnectDirective>
        <DomainRelationshipMoniker Name="CountryReferencesTargets" />
        <SourceDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="Country" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </SourceDirectives>
        <TargetDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="Country" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </TargetDirectives>
      </LinkConnectDirective>
    </ConnectionBuilder>
    <ConnectionBuilder Name="CityReferencesTargetCityBuilder">
      <LinkConnectDirective>
        <DomainRelationshipMoniker Name="CityReferencesTargetCity" />
        <SourceDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="City" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </SourceDirectives>
        <TargetDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="City" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </TargetDirectives>
      </LinkConnectDirective>
    </ConnectionBuilder>
  </ConnectionBuilders>
  <Diagram Id="5b27168e-71cb-4690-ac75-7d2b6eec6589" Description="Description for Company.Tutorial1.Tutorial1Diagram" Name="Tutorial1Diagram" DisplayName="Minimal Language Diagram" Namespace="Company.Tutorial1">
    <Class>
      <DomainClassMoniker Name="World" />
    </Class>
    <ShapeMaps>
      <ShapeMap>
        <DomainClassMoniker Name="Country" />
        <ParentElementPath>
          <DomainPath>WorldHasCountries.World/!World</DomainPath>
        </ParentElementPath>
        <DecoratorMap>
          <TextDecoratorMoniker Name="CountryShape/CountryName" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="Country/Name" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <GeometryShapeMoniker Name="CountryShape" />
      </ShapeMap>
      <ShapeMap>
        <DomainClassMoniker Name="Person" />
        <ParentElementPath>
          <DomainPath>CityHasPerson.City/!City/CountryHasCity.Country/!Country/WorldHasCountries.World/!World</DomainPath>
        </ParentElementPath>
        <GeometryShapeMoniker Name="PersonShape" />
      </ShapeMap>
      <ShapeMap>
        <DomainClassMoniker Name="City" />
        <ParentElementPath>
          <DomainPath>CountryHasCity.Country/!Country/WorldHasCountries.World/!World</DomainPath>
        </ParentElementPath>
        <DecoratorMap>
          <TextDecoratorMoniker Name="CityShape/Location" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="City/Location" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <DecoratorMap>
          <TextDecoratorMoniker Name="CityShape/Name" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="City/Name" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <DecoratorMap>
          <TextDecoratorMoniker Name="CityShape/Population" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="City/Population" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <GeometryShapeMoniker Name="CityShape" />
      </ShapeMap>
    </ShapeMaps>
    <ConnectorMaps>
      <ConnectorMap>
        <ConnectorMoniker Name="ExampleConnector" />
        <DomainRelationshipMoniker Name="CountryReferencesTargets" />
      </ConnectorMap>
      <ConnectorMap>
        <ConnectorMoniker Name="CityConnector" />
        <DomainRelationshipMoniker Name="CityReferencesTargetCity" />
      </ConnectorMap>
    </ConnectorMaps>
  </Diagram>
  <Designer CopyPasteGeneration="CopyPasteOnly" FileExtension="Tutorial1" EditorGuid="50ad311b-c3ef-46e2-af39-913b444c1f0f">
    <RootClass>
      <DomainClassMoniker Name="World" />
    </RootClass>
    <XmlSerializationDefinition CustomPostLoad="false">
      <XmlSerializationBehaviorMoniker Name="Tutorial1SerializationBehavior" />
    </XmlSerializationDefinition>
    <ToolboxTab TabText="Tutorial1">
      <ElementTool Name="Countryshape" ToolboxIcon="resources\exampleshapetoolbitmap.bmp" Caption="Countryshape" Tooltip="Create an ExampleElement" HelpKeyword="CreateExampleClassF1Keyword">
        <DomainClassMoniker Name="Country" />
      </ElementTool>
      <ConnectionTool Name="CountryRelationship" ToolboxIcon="resources\exampleconnectortoolbitmap.bmp" Caption="CountryRelationship" Tooltip="Drag between ExampleElements to create an ExampleRelationship" HelpKeyword="ConnectExampleRelationF1Keyword">
        <ConnectionBuilderMoniker Name="Tutorial1/CountryReferencesTargetsBuilder" />
      </ConnectionTool>
      <ElementTool Name="CityShape" ToolboxIcon="Resources\ExampleShapeToolBitmap.bmp" Caption="City" Tooltip="City Shape" HelpKeyword="CityShape">
        <DomainClassMoniker Name="City" />
      </ElementTool>
      <ConnectionTool Name="CityRelationship" ToolboxIcon="Resources\ExampleConnectorToolBitmap.bmp" Caption="CityRelationship" Tooltip="City Relationship" HelpKeyword="CityRelationship">
        <ConnectionBuilderMoniker Name="Tutorial1/CountryReferencesTargetsBuilder" />
      </ConnectionTool>
    </ToolboxTab>
    <Validation UsesMenu="false" UsesOpen="false" UsesSave="false" UsesLoad="false" />
    <DiagramMoniker Name="Tutorial1Diagram" />
  </Designer>
  <Explorer ExplorerGuid="37c3bfce-9ee0-4c8e-8a5c-3001884c81ed" Title="Tutorial1 Explorer">
    <ExplorerBehaviorMoniker Name="Tutorial1/Tutorial1Explorer" />
  </Explorer>
</Dsl>