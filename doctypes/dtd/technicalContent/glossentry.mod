<?xml version="1.0" encoding="UTF-8"?>
<!-- ============================================================= -->
<!--                    HEADER                                     -->
<!-- ============================================================= -->
<!--  MODULE:    DITA Glossary                                     -->
<!--  VERSION:   2.0                                               -->
<!--  DATE:      [[[Release date]]]                                     -->
<!--  PURPOSE:   Define elements and specialization atttributes    -->
<!--             for Glossary topics                               -->
<!--                                                               -->
<!-- ============================================================= -->
<!-- ============================================================= -->
<!--                    PUBLIC DOCUMENT TYPE DEFINITION            -->
<!--                    TYPICAL INVOCATION                         -->
<!--                                                               -->
<!--  Refer to this file by the following public identifier or an  -->
<!--       appropriate system identifier                           -->
<!-- PUBLIC "-//OASIS//ELEMENTS DITA 2.0 Glossary Entry//EN"           -->
<!--       Delivered as file "glossentry.mod"                             -->
<!-- ============================================================= -->
<!--             (C) Copyright OASIS Open 2006, 2019.              -->
<!--             All Rights Reserved.                              -->
<!--                                                               -->
<!--  UPDATES:                                                     -->
<!--    2019.03.23 KJE: Modified content models of                 -->
<!--                    glossSurfaceForm, glossAcronym,            -->
<!--                    glossSynonym, glossShortForm, and          -->
<!--                    glossAbbreviation                          -->
<!--                                                               -->
<!-- ============================================================= -->
<!--                                                               -->

<!-- ============================================================= -->
<!--                   ELEMENT NAME ENTITIES                       -->
<!-- ============================================================= -->

<!ENTITY % glossentry  "glossentry"                                  >
<!ENTITY % glossterm   "glossterm"                                   >
<!ENTITY % glossdef    "glossdef"                                    >
<!ENTITY % glossBody   "glossBody"                                   >
<!ENTITY % glossAcronym
                       "glossAcronym"                                >
<!ENTITY % glossSynonym
                       "glossSynonym"                                >
<!ENTITY % glossSurfaceForm
                       "glossSurfaceForm"                            >
<!ENTITY % glossUsage  "glossUsage"                                  >
<!ENTITY % glossSymbol "glossSymbol"                                 >
<!ENTITY % glossAlt    "glossAlt"                                    >

<!-- ============================================================= -->
<!--                    ELEMENT DECLARATIONS                       -->
<!-- ============================================================= -->

<!ENTITY % glossentry-info-types
              "no-topic-nesting"
>
<!--                    LONG NAME: Glossary Entry                  -->
<!ENTITY % glossentry.content
                       "((%glossterm;),
                         (%glossdef;)?,
                         (%prolog;)?,
                         (%glossBody;)?,
                         (%related-links;)?,
                         (%glossentry-info-types;)*)"
>
<!ENTITY % glossentry.attributes
              "id
                          ID
                                    #REQUIRED
               %conref-atts;
               %select-atts;
               %localization-atts;
               outputclass
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  glossentry %glossentry.content;>
<!ATTLIST  glossentry %glossentry.attributes;
                 %arch-atts;
                 specializations 
                        CDATA
                                  "&included-domains;"
>


<!--                    LONG NAME: Glossary Term                   -->
<!ENTITY % glossterm.content
                       "(%title.cnt;)*"
>
<!ENTITY % glossterm.attributes
              "%id-atts;
               %localization-atts;
               base
                          CDATA
                                    #IMPLIED
               %base-attribute-extensions;
               outputclass
                          CDATA
                                    #IMPLIED
               rev
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  glossterm %glossterm.content;>
<!ATTLIST  glossterm %glossterm.attributes;>


<!--                    LONG NAME: Glossary Definition             -->
<!ENTITY % glossdef.content
                       "(%abstract.cnt;)*"
>
<!ENTITY % glossdef.attributes
              "%univ-atts;"
>
<!ELEMENT  glossdef %glossdef.content;>
<!ATTLIST  glossdef %glossdef.attributes;>


<!--                    LONG NAME: Glossary Body                   -->
<!ENTITY % glossBody.content
                       "((%glossSurfaceForm;)?,
                         (%glossUsage;)?,
                         (%glossSymbol;)*,
                         (%note;)*,
                         (%glossAlt;)*)"
>
<!ENTITY % glossBody.attributes
              "%univ-atts;"
>
<!ELEMENT  glossBody %glossBody.content;>
<!ATTLIST  glossBody %glossBody.attributes;>

<!--                    LONG NAME: Glossary Acronym                -->
<!ENTITY % glossAcronym.content
                       "(#PCDATA |
                         %keyword; |
                         %term; |
                         %text; |
                         %tm; |
                         %ph;)*"
>
<!ENTITY % glossAcronym.attributes
              "%id-atts;
               %localization-atts;
               base
                          CDATA
                                    #IMPLIED
               %base-attribute-extensions;
               outputclass
                          CDATA
                                    #IMPLIED
               rev
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  glossAcronym %glossAcronym.content;>
<!ATTLIST  glossAcronym %glossAcronym.attributes;>


<!--                    LONG NAME: Glossary Synonym                -->
<!ENTITY % glossSynonym.content
                       "(#PCDATA |
                         %keyword; |
                         %term; |
                         %text; |
                         %tm; |
                         %ph;)*"
>
<!ENTITY % glossSynonym.attributes
              "%id-atts;
               %localization-atts;
               base
                          CDATA
                                    #IMPLIED
               %base-attribute-extensions;
               outputclass
                          CDATA
                                    #IMPLIED
               rev
                          CDATA
                                    #IMPLIED"
>
<!ELEMENT  glossSynonym %glossSynonym.content;>
<!ATTLIST  glossSynonym %glossSynonym.attributes;>


<!--                    LONG NAME: Glossary Surface Form           -->
<!ENTITY % glossSurfaceForm.content
                       "(#PCDATA |
                         %keyword; |
                         %term; |
                         %text; |
                         %tm; |
                         %ph;)*"
>
<!ENTITY % glossSurfaceForm.attributes
              "%univ-atts;"
>
<!ELEMENT  glossSurfaceForm %glossSurfaceForm.content;>
<!ATTLIST  glossSurfaceForm %glossSurfaceForm.attributes;>


<!--                    LONG NAME: Glossary Usage                  -->
<!ENTITY % glossUsage.content
                       "(%note.cnt;)*"
>
<!ENTITY % glossUsage.attributes
              "type
                          (attention |
                           caution |
                           danger |
                           fastpath |
                           important |
                           note |
                           notice |
                           other |
                           remember |
                           restriction |
                           tip |
                           warning |
                           -dita-use-conref-target)
                                    #IMPLIED
               othertype
                          CDATA
                                    #IMPLIED
               %univ-atts;"
>
<!ELEMENT  glossUsage %glossUsage.content;>
<!ATTLIST  glossUsage %glossUsage.attributes;>


<!--                    LONG NAME: Glossary Symbol                 -->
<!ENTITY % glossSymbol.content
                       "((%alt;)?,
                         (%longdescref;)?)"
>
<!ENTITY % glossSymbol.attributes
              "href
                          CDATA
                                    #IMPLIED
               format
                          CDATA
                                    #IMPLIED
               scope
                          (external |
                           local |
                           peer |
                           -dita-use-conref-target)
                                    #IMPLIED
               keyref
                          CDATA
                                    #IMPLIED
               height
                          NMTOKEN
                                    #IMPLIED
               width
                          NMTOKEN
                                    #IMPLIED
               align
                          CDATA
                                    #IMPLIED
               scale
                          NMTOKEN
                                    #IMPLIED
               scalefit
                          (yes |
                           no |
                           -dita-use-conref-target)
                                    #IMPLIED
               placement
                          (break |
                           inline |
                           -dita-use-conref-target)
                                    'inline'
               %univ-atts;"
>
<!ELEMENT  glossSymbol %glossSymbol.content;>
<!ATTLIST  glossSymbol %glossSymbol.attributes;>


<!--                    LONG NAME: Glossary Alternate Form         -->
<!ENTITY % glossAlt.content
                       "((%glossAcronym; |
                          %glossSynonym;)?,
                         (%glossUsage;)?,
                         (%note;)*)"
>
<!ENTITY % glossAlt.attributes
              "%univ-atts;"
>
<!ELEMENT  glossAlt %glossAlt.content;>
<!ATTLIST  glossAlt %glossAlt.attributes;>



<!-- ============================================================= -->
<!--             SPECIALIZATION ATTRIBUTE DECLARATIONS             -->
<!-- ============================================================= -->
  
<!ATTLIST  glossentry   class CDATA "- topic/topic concept/concept glossentry/glossentry ">
<!ATTLIST  glossterm    class CDATA "- topic/title concept/title glossentry/glossterm ">
<!ATTLIST  glossdef     class CDATA "- topic/abstract concept/abstract glossentry/glossdef ">
<!ATTLIST  glossBody    class CDATA "- topic/body concept/conbody glossentry/glossBody ">
<!ATTLIST  glossAcronym class CDATA "- topic/title concept/title glossentry/glossAcronym ">
<!ATTLIST  glossSynonym class CDATA "- topic/title concept/title glossentry/glossSynonym ">
<!ATTLIST  glossAlt     class CDATA "- topic/section concept/section glossentry/glossAlt ">
<!ATTLIST  glossSurfaceForm class CDATA "- topic/p concept/p glossentry/glossSurfaceForm ">
<!ATTLIST  glossSymbol  class CDATA "- topic/image concept/image glossentry/glossSymbol ">
<!ATTLIST  glossUsage   class CDATA "- topic/note concept/note glossentry/glossUsage ">

<!-- ================== End of DITA Glossary Entry ==================== -->
 