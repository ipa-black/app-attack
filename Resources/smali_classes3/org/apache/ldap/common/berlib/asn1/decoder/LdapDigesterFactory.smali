.class public Lorg/apache/ldap/common/berlib/asn1/decoder/LdapDigesterFactory;
.super Ljava/lang/Object;
.source "LdapDigesterFactory.java"


# static fields
.field private static singleton:Lorg/apache/ldap/common/berlib/asn1/decoder/LdapDigesterFactory;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    sput-object p0, Lorg/apache/ldap/common/berlib/asn1/decoder/LdapDigesterFactory;->singleton:Lorg/apache/ldap/common/berlib/asn1/decoder/LdapDigesterFactory;

    return-void
.end method

.method private addAbandonRequestRules(Lorg/apache/asn1/ber/digester/BERDigester;)V
    .locals 2

    .line 962
    sget-object v0, Lorg/apache/asn1/ber/primitives/UniversalTag;->SEQUENCE_SEQUENCE_OF:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-virtual {v0}, Lorg/apache/asn1/ber/primitives/UniversalTag;->getValue()I

    move-result v0

    .line 963
    sget-object v1, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->ABANDON_REQUEST:Lorg/apache/ldap/common/berlib/asn1/LdapTag;

    invoke-virtual {v1}, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->getValue()I

    move-result v1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    .line 964
    new-instance v1, Lorg/apache/ldap/common/berlib/asn1/decoder/abandon/AbandonRequestRule;

    invoke-direct {v1}, Lorg/apache/ldap/common/berlib/asn1/decoder/abandon/AbandonRequestRule;-><init>()V

    invoke-virtual {p1, v0, v1}, Lorg/apache/asn1/ber/digester/BERDigester;->addRule([ILorg/apache/asn1/ber/digester/Rule;)V

    return-void
.end method

.method private addAddRequestRules(Lorg/apache/asn1/ber/digester/BERDigester;)V
    .locals 7

    .line 408
    sget-object v0, Lorg/apache/asn1/ber/primitives/UniversalTag;->SEQUENCE_SEQUENCE_OF:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-virtual {v0}, Lorg/apache/asn1/ber/primitives/UniversalTag;->getPrimitiveTag()I

    move-result v0

    .line 409
    sget-object v1, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->ADD_REQUEST:Lorg/apache/ldap/common/berlib/asn1/LdapTag;

    invoke-virtual {v1}, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->getPrimitiveTag()I

    move-result v1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    .line 410
    new-instance v1, Lorg/apache/ldap/common/berlib/asn1/decoder/add/AddRequestRule;

    invoke-direct {v1}, Lorg/apache/ldap/common/berlib/asn1/decoder/add/AddRequestRule;-><init>()V

    invoke-virtual {p1, v0, v1}, Lorg/apache/asn1/ber/digester/BERDigester;->addRule([ILorg/apache/asn1/ber/digester/Rule;)V

    const/4 v0, 0x3

    .line 413
    new-array v0, v0, [I

    .line 414
    sget-object v1, Lorg/apache/asn1/ber/primitives/UniversalTag;->SEQUENCE_SEQUENCE_OF:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-virtual {v1}, Lorg/apache/asn1/ber/primitives/UniversalTag;->getPrimitiveTag()I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 415
    sget-object v1, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->ADD_REQUEST:Lorg/apache/ldap/common/berlib/asn1/LdapTag;

    invoke-virtual {v1}, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->getPrimitiveTag()I

    move-result v1

    const/4 v3, 0x1

    aput v1, v0, v3

    .line 416
    sget-object v1, Lorg/apache/asn1/ber/primitives/UniversalTag;->OCTET_STRING:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-virtual {v1}, Lorg/apache/asn1/ber/primitives/UniversalTag;->getPrimitiveTag()I

    move-result v1

    const/4 v4, 0x2

    aput v1, v0, v4

    .line 417
    new-instance v1, Lorg/apache/ldap/common/berlib/asn1/decoder/add/AddRequestEntryDnRule;

    invoke-direct {v1}, Lorg/apache/ldap/common/berlib/asn1/decoder/add/AddRequestEntryDnRule;-><init>()V

    invoke-virtual {p1, v0, v1}, Lorg/apache/asn1/ber/digester/BERDigester;->addRule([ILorg/apache/asn1/ber/digester/Rule;)V

    .line 419
    sget-object v1, Lorg/apache/asn1/ber/primitives/UniversalTag;->SEQUENCE_SEQUENCE_OF:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-virtual {v1}, Lorg/apache/asn1/ber/primitives/UniversalTag;->getPrimitiveTag()I

    move-result v1

    aput v1, v0, v2

    .line 420
    sget-object v1, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->ADD_REQUEST:Lorg/apache/ldap/common/berlib/asn1/LdapTag;

    invoke-virtual {v1}, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->getPrimitiveTag()I

    move-result v1

    aput v1, v0, v3

    .line 421
    sget-object v1, Lorg/apache/asn1/ber/primitives/UniversalTag;->SEQUENCE_SEQUENCE_OF:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-virtual {v1}, Lorg/apache/asn1/ber/primitives/UniversalTag;->getPrimitiveTag()I

    move-result v1

    aput v1, v0, v4

    .line 422
    new-instance v1, Lorg/apache/ldap/common/berlib/asn1/decoder/add/AddRequestAttributesRule;

    invoke-direct {v1}, Lorg/apache/ldap/common/berlib/asn1/decoder/add/AddRequestAttributesRule;-><init>()V

    invoke-virtual {p1, v0, v1}, Lorg/apache/asn1/ber/digester/BERDigester;->addRule([ILorg/apache/asn1/ber/digester/Rule;)V

    .line 425
    sget-object v0, Lorg/apache/asn1/ber/primitives/UniversalTag;->SEQUENCE_SEQUENCE_OF:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-virtual {v0}, Lorg/apache/asn1/ber/primitives/UniversalTag;->getPrimitiveTag()I

    move-result v0

    .line 426
    sget-object v1, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->ADD_REQUEST:Lorg/apache/ldap/common/berlib/asn1/LdapTag;

    invoke-virtual {v1}, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->getPrimitiveTag()I

    move-result v1

    .line 427
    sget-object v2, Lorg/apache/asn1/ber/primitives/UniversalTag;->SEQUENCE_SEQUENCE_OF:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-virtual {v2}, Lorg/apache/asn1/ber/primitives/UniversalTag;->getPrimitiveTag()I

    move-result v2

    .line 428
    sget-object v3, Lorg/apache/asn1/ber/primitives/UniversalTag;->SEQUENCE_SEQUENCE_OF:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-virtual {v3}, Lorg/apache/asn1/ber/primitives/UniversalTag;->getPrimitiveTag()I

    move-result v3

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    .line 429
    new-instance v1, Lorg/apache/asn1/ber/digester/rules/PopOnFinish;

    invoke-direct {v1}, Lorg/apache/asn1/ber/digester/rules/PopOnFinish;-><init>()V

    invoke-virtual {p1, v0, v1}, Lorg/apache/asn1/ber/digester/BERDigester;->addRule([ILorg/apache/asn1/ber/digester/Rule;)V

    .line 432
    sget-object v0, Lorg/apache/asn1/ber/primitives/UniversalTag;->SEQUENCE_SEQUENCE_OF:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-virtual {v0}, Lorg/apache/asn1/ber/primitives/UniversalTag;->getPrimitiveTag()I

    move-result v0

    .line 433
    sget-object v1, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->ADD_REQUEST:Lorg/apache/ldap/common/berlib/asn1/LdapTag;

    invoke-virtual {v1}, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->getPrimitiveTag()I

    move-result v1

    .line 434
    sget-object v2, Lorg/apache/asn1/ber/primitives/UniversalTag;->SEQUENCE_SEQUENCE_OF:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-virtual {v2}, Lorg/apache/asn1/ber/primitives/UniversalTag;->getPrimitiveTag()I

    move-result v2

    .line 435
    sget-object v3, Lorg/apache/asn1/ber/primitives/UniversalTag;->SEQUENCE_SEQUENCE_OF:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-virtual {v3}, Lorg/apache/asn1/ber/primitives/UniversalTag;->getPrimitiveTag()I

    move-result v3

    .line 436
    sget-object v4, Lorg/apache/asn1/ber/primitives/UniversalTag;->OCTET_STRING:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-virtual {v4}, Lorg/apache/asn1/ber/primitives/UniversalTag;->getPrimitiveTag()I

    move-result v4

    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    .line 437
    new-instance v1, Lorg/apache/asn1/ber/digester/rules/Octets2StringRule;

    invoke-direct {v1}, Lorg/apache/asn1/ber/digester/rules/Octets2StringRule;-><init>()V

    invoke-virtual {p1, v0, v1}, Lorg/apache/asn1/ber/digester/BERDigester;->addRule([ILorg/apache/asn1/ber/digester/Rule;)V

    .line 440
    sget-object v0, Lorg/apache/asn1/ber/primitives/UniversalTag;->SEQUENCE_SEQUENCE_OF:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-virtual {v0}, Lorg/apache/asn1/ber/primitives/UniversalTag;->getPrimitiveTag()I

    move-result v1

    .line 441
    sget-object v0, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->ADD_REQUEST:Lorg/apache/ldap/common/berlib/asn1/LdapTag;

    invoke-virtual {v0}, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->getPrimitiveTag()I

    move-result v2

    .line 442
    sget-object v0, Lorg/apache/asn1/ber/primitives/UniversalTag;->SEQUENCE_SEQUENCE_OF:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-virtual {v0}, Lorg/apache/asn1/ber/primitives/UniversalTag;->getPrimitiveTag()I

    move-result v3

    .line 443
    sget-object v0, Lorg/apache/asn1/ber/primitives/UniversalTag;->SEQUENCE_SEQUENCE_OF:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-virtual {v0}, Lorg/apache/asn1/ber/primitives/UniversalTag;->getPrimitiveTag()I

    move-result v4

    .line 444
    sget-object v0, Lorg/apache/asn1/ber/primitives/UniversalTag;->SET_SET_OF:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-virtual {v0}, Lorg/apache/asn1/ber/primitives/UniversalTag;->getPrimitiveTag()I

    move-result v5

    .line 445
    sget-object v0, Lorg/apache/asn1/ber/primitives/UniversalTag;->OCTET_STRING:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-virtual {v0}, Lorg/apache/asn1/ber/primitives/UniversalTag;->getPrimitiveTag()I

    move-result v6

    filled-new-array/range {v1 .. v6}, [I

    move-result-object v0

    .line 446
    new-instance v1, Lorg/apache/ldap/common/berlib/asn1/decoder/add/AddAttributeValueRule;

    invoke-direct {v1}, Lorg/apache/ldap/common/berlib/asn1/decoder/add/AddAttributeValueRule;-><init>()V

    invoke-virtual {p1, v0, v1}, Lorg/apache/asn1/ber/digester/BERDigester;->addRule([ILorg/apache/asn1/ber/digester/Rule;)V

    return-void
.end method

.method private addAddResponseRules(Lorg/apache/asn1/ber/digester/BERDigester;)V
    .locals 4

    .line 556
    sget-object v0, Lorg/apache/asn1/ber/primitives/UniversalTag;->SEQUENCE_SEQUENCE_OF:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-virtual {v0}, Lorg/apache/asn1/ber/primitives/UniversalTag;->getPrimitiveTag()I

    move-result v0

    .line 557
    sget-object v1, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->ADD_RESPONSE:Lorg/apache/ldap/common/berlib/asn1/LdapTag;

    invoke-virtual {v1}, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->getPrimitiveTag()I

    move-result v1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    .line 558
    new-instance v1, Lorg/apache/ldap/common/berlib/asn1/decoder/add/AddResponseRule;

    invoke-direct {v1}, Lorg/apache/ldap/common/berlib/asn1/decoder/add/AddResponseRule;-><init>()V

    invoke-virtual {p1, v0, v1}, Lorg/apache/asn1/ber/digester/BERDigester;->addRule([ILorg/apache/asn1/ber/digester/Rule;)V

    const/4 v0, 0x3

    .line 561
    new-array v0, v0, [I

    .line 562
    sget-object v1, Lorg/apache/asn1/ber/primitives/UniversalTag;->SEQUENCE_SEQUENCE_OF:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-virtual {v1}, Lorg/apache/asn1/ber/primitives/UniversalTag;->getPrimitiveTag()I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 563
    sget-object v1, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->ADD_RESPONSE:Lorg/apache/ldap/common/berlib/asn1/LdapTag;

    invoke-virtual {v1}, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->getPrimitiveTag()I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 566
    sget-object v1, Lorg/apache/asn1/ber/primitives/UniversalTag;->ENUMERATED:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-virtual {v1}, Lorg/apache/asn1/ber/primitives/UniversalTag;->getPrimitiveTag()I

    move-result v1

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 567
    new-instance v1, Lorg/apache/ldap/common/berlib/asn1/decoder/ResultCodeRule;

    invoke-direct {v1}, Lorg/apache/ldap/common/berlib/asn1/decoder/ResultCodeRule;-><init>()V

    invoke-virtual {p1, v0, v1}, Lorg/apache/asn1/ber/digester/BERDigester;->addRule([ILorg/apache/asn1/ber/digester/Rule;)V

    .line 570
    sget-object v1, Lorg/apache/asn1/ber/primitives/UniversalTag;->OCTET_STRING:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-virtual {v1}, Lorg/apache/asn1/ber/primitives/UniversalTag;->getPrimitiveTag()I

    move-result v1

    aput v1, v0, v2

    .line 571
    new-instance v1, Lorg/apache/ldap/common/berlib/asn1/decoder/ResultMatchedDNRule;

    invoke-direct {v1}, Lorg/apache/ldap/common/berlib/asn1/decoder/ResultMatchedDNRule;-><init>()V

    invoke-virtual {p1, v0, v1}, Lorg/apache/asn1/ber/digester/BERDigester;->addRule([ILorg/apache/asn1/ber/digester/Rule;)V

    .line 572
    new-instance v1, Lorg/apache/ldap/common/berlib/asn1/decoder/ErrorMessageRule;

    invoke-direct {v1}, Lorg/apache/ldap/common/berlib/asn1/decoder/ErrorMessageRule;-><init>()V

    invoke-virtual {p1, v0, v1}, Lorg/apache/asn1/ber/digester/BERDigester;->addRule([ILorg/apache/asn1/ber/digester/Rule;)V

    .line 575
    sget-object v1, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->REFERRAL_TAG:Lorg/apache/asn1/ber/primitives/ContextSpecificTag;

    invoke-virtual {v1}, Lorg/apache/asn1/ber/primitives/ContextSpecificTag;->getPrimitiveTag()I

    move-result v1

    aput v1, v0, v2

    .line 576
    new-instance v1, Lorg/apache/ldap/common/berlib/asn1/decoder/ReferralRule;

    invoke-direct {v1}, Lorg/apache/ldap/common/berlib/asn1/decoder/ReferralRule;-><init>()V

    invoke-virtual {p1, v0, v1}, Lorg/apache/asn1/ber/digester/BERDigester;->addRule([ILorg/apache/asn1/ber/digester/Rule;)V

    .line 580
    sget-object v0, Lorg/apache/asn1/ber/primitives/UniversalTag;->SEQUENCE_SEQUENCE_OF:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-virtual {v0}, Lorg/apache/asn1/ber/primitives/UniversalTag;->getPrimitiveTag()I

    move-result v0

    .line 581
    sget-object v1, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->ADD_RESPONSE:Lorg/apache/ldap/common/berlib/asn1/LdapTag;

    invoke-virtual {v1}, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->getPrimitiveTag()I

    move-result v1

    .line 582
    sget-object v2, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->REFERRAL_TAG:Lorg/apache/asn1/ber/primitives/ContextSpecificTag;

    invoke-virtual {v2}, Lorg/apache/asn1/ber/primitives/ContextSpecificTag;->getPrimitiveTag()I

    move-result v2

    .line 583
    sget-object v3, Lorg/apache/asn1/ber/primitives/UniversalTag;->OCTET_STRING:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-virtual {v3}, Lorg/apache/asn1/ber/primitives/UniversalTag;->getPrimitiveTag()I

    move-result v3

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    .line 584
    new-instance v1, Lorg/apache/ldap/common/berlib/asn1/decoder/ReferralUrlRule;

    invoke-direct {v1}, Lorg/apache/ldap/common/berlib/asn1/decoder/ReferralUrlRule;-><init>()V

    invoke-virtual {p1, v0, v1}, Lorg/apache/asn1/ber/digester/BERDigester;->addRule([ILorg/apache/asn1/ber/digester/Rule;)V

    return-void
.end method

.method private addBindRequestRules(Lorg/apache/asn1/ber/digester/BERDigester;)V
    .locals 4

    const/high16 v0, 0x10000000

    const/high16 v1, 0x40000000    # 2.0f

    .line 926
    filled-new-array {v0, v1}, [I

    move-result-object v2

    .line 927
    new-instance v3, Lorg/apache/ldap/common/berlib/asn1/decoder/bind/BindRequestRule;

    invoke-direct {v3}, Lorg/apache/ldap/common/berlib/asn1/decoder/bind/BindRequestRule;-><init>()V

    invoke-virtual {p1, v2, v3}, Lorg/apache/asn1/ber/digester/BERDigester;->addRule([ILorg/apache/asn1/ber/digester/Rule;)V

    const/high16 v2, 0x2000000

    .line 929
    filled-new-array {v0, v1, v2}, [I

    move-result-object v2

    .line 930
    new-instance v3, Lorg/apache/ldap/common/berlib/asn1/decoder/bind/BindVersionRule;

    invoke-direct {v3}, Lorg/apache/ldap/common/berlib/asn1/decoder/bind/BindVersionRule;-><init>()V

    invoke-virtual {p1, v2, v3}, Lorg/apache/asn1/ber/digester/BERDigester;->addRule([ILorg/apache/asn1/ber/digester/Rule;)V

    const/high16 v2, 0x4000000

    .line 932
    filled-new-array {v0, v1, v2}, [I

    move-result-object v2

    .line 933
    new-instance v3, Lorg/apache/ldap/common/berlib/asn1/decoder/bind/BindNameRule;

    invoke-direct {v3}, Lorg/apache/ldap/common/berlib/asn1/decoder/bind/BindNameRule;-><init>()V

    invoke-virtual {p1, v2, v3}, Lorg/apache/asn1/ber/digester/BERDigester;->addRule([ILorg/apache/asn1/ber/digester/Rule;)V

    const/high16 v2, -0x80000000

    .line 935
    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    .line 936
    new-instance v1, Lorg/apache/ldap/common/berlib/asn1/decoder/bind/BindSimpleCredentialsRule;

    invoke-direct {v1}, Lorg/apache/ldap/common/berlib/asn1/decoder/bind/BindSimpleCredentialsRule;-><init>()V

    invoke-virtual {p1, v0, v1}, Lorg/apache/asn1/ber/digester/BERDigester;->addRule([ILorg/apache/asn1/ber/digester/Rule;)V

    return-void
.end method

.method private addBindResponseRules(Lorg/apache/asn1/ber/digester/BERDigester;)V
    .locals 4

    .line 881
    sget-object v0, Lorg/apache/asn1/ber/primitives/UniversalTag;->SEQUENCE_SEQUENCE_OF:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-virtual {v0}, Lorg/apache/asn1/ber/primitives/UniversalTag;->getPrimitiveTag()I

    move-result v0

    .line 882
    sget-object v1, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->BIND_RESPONSE:Lorg/apache/ldap/common/berlib/asn1/LdapTag;

    invoke-virtual {v1}, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->getPrimitiveTag()I

    move-result v1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    .line 883
    new-instance v1, Lorg/apache/ldap/common/berlib/asn1/decoder/bind/BindResponseRule;

    invoke-direct {v1}, Lorg/apache/ldap/common/berlib/asn1/decoder/bind/BindResponseRule;-><init>()V

    invoke-virtual {p1, v0, v1}, Lorg/apache/asn1/ber/digester/BERDigester;->addRule([ILorg/apache/asn1/ber/digester/Rule;)V

    const/4 v0, 0x3

    .line 886
    new-array v0, v0, [I

    .line 887
    sget-object v1, Lorg/apache/asn1/ber/primitives/UniversalTag;->SEQUENCE_SEQUENCE_OF:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-virtual {v1}, Lorg/apache/asn1/ber/primitives/UniversalTag;->getPrimitiveTag()I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 888
    sget-object v1, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->BIND_RESPONSE:Lorg/apache/ldap/common/berlib/asn1/LdapTag;

    invoke-virtual {v1}, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->getPrimitiveTag()I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 891
    sget-object v1, Lorg/apache/asn1/ber/primitives/UniversalTag;->ENUMERATED:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-virtual {v1}, Lorg/apache/asn1/ber/primitives/UniversalTag;->getPrimitiveTag()I

    move-result v1

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 892
    new-instance v1, Lorg/apache/ldap/common/berlib/asn1/decoder/ResultCodeRule;

    invoke-direct {v1}, Lorg/apache/ldap/common/berlib/asn1/decoder/ResultCodeRule;-><init>()V

    invoke-virtual {p1, v0, v1}, Lorg/apache/asn1/ber/digester/BERDigester;->addRule([ILorg/apache/asn1/ber/digester/Rule;)V

    .line 895
    sget-object v1, Lorg/apache/asn1/ber/primitives/UniversalTag;->OCTET_STRING:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-virtual {v1}, Lorg/apache/asn1/ber/primitives/UniversalTag;->getPrimitiveTag()I

    move-result v1

    aput v1, v0, v2

    .line 896
    new-instance v1, Lorg/apache/ldap/common/berlib/asn1/decoder/ResultMatchedDNRule;

    invoke-direct {v1}, Lorg/apache/ldap/common/berlib/asn1/decoder/ResultMatchedDNRule;-><init>()V

    invoke-virtual {p1, v0, v1}, Lorg/apache/asn1/ber/digester/BERDigester;->addRule([ILorg/apache/asn1/ber/digester/Rule;)V

    .line 897
    new-instance v1, Lorg/apache/ldap/common/berlib/asn1/decoder/ErrorMessageRule;

    invoke-direct {v1}, Lorg/apache/ldap/common/berlib/asn1/decoder/ErrorMessageRule;-><init>()V

    invoke-virtual {p1, v0, v1}, Lorg/apache/asn1/ber/digester/BERDigester;->addRule([ILorg/apache/asn1/ber/digester/Rule;)V

    .line 900
    sget-object v1, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->REFERRAL_TAG:Lorg/apache/asn1/ber/primitives/ContextSpecificTag;

    invoke-virtual {v1}, Lorg/apache/asn1/ber/primitives/ContextSpecificTag;->getPrimitiveTag()I

    move-result v1

    aput v1, v0, v2

    .line 901
    new-instance v1, Lorg/apache/ldap/common/berlib/asn1/decoder/ReferralRule;

    invoke-direct {v1}, Lorg/apache/ldap/common/berlib/asn1/decoder/ReferralRule;-><init>()V

    invoke-virtual {p1, v0, v1}, Lorg/apache/asn1/ber/digester/BERDigester;->addRule([ILorg/apache/asn1/ber/digester/Rule;)V

    .line 904
    sget-object v1, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->SERVER_SASL_CREDS_TAG:Lorg/apache/asn1/ber/primitives/ContextSpecificTag;

    invoke-virtual {v1}, Lorg/apache/asn1/ber/primitives/ContextSpecificTag;->getPrimitiveTag()I

    move-result v1

    aput v1, v0, v2

    .line 905
    new-instance v1, Lorg/apache/asn1/ber/digester/rules/PrimitiveOctetStringRule;

    sget-object v2, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->SERVER_SASL_CREDS_TAG:Lorg/apache/asn1/ber/primitives/ContextSpecificTag;

    invoke-direct {v1, v2}, Lorg/apache/asn1/ber/digester/rules/PrimitiveOctetStringRule;-><init>(Lorg/apache/asn1/ber/TagEnum;)V

    invoke-virtual {p1, v0, v1}, Lorg/apache/asn1/ber/digester/BERDigester;->addRule([ILorg/apache/asn1/ber/digester/Rule;)V

    .line 910
    sget-object v0, Lorg/apache/asn1/ber/primitives/UniversalTag;->SEQUENCE_SEQUENCE_OF:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-virtual {v0}, Lorg/apache/asn1/ber/primitives/UniversalTag;->getPrimitiveTag()I

    move-result v0

    .line 911
    sget-object v1, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->BIND_RESPONSE:Lorg/apache/ldap/common/berlib/asn1/LdapTag;

    invoke-virtual {v1}, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->getPrimitiveTag()I

    move-result v1

    .line 912
    sget-object v2, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->REFERRAL_TAG:Lorg/apache/asn1/ber/primitives/ContextSpecificTag;

    invoke-virtual {v2}, Lorg/apache/asn1/ber/primitives/ContextSpecificTag;->getPrimitiveTag()I

    move-result v2

    .line 913
    sget-object v3, Lorg/apache/asn1/ber/primitives/UniversalTag;->OCTET_STRING:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-virtual {v3}, Lorg/apache/asn1/ber/primitives/UniversalTag;->getPrimitiveTag()I

    move-result v3

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    .line 914
    new-instance v1, Lorg/apache/ldap/common/berlib/asn1/decoder/ReferralUrlRule;

    invoke-direct {v1}, Lorg/apache/ldap/common/berlib/asn1/decoder/ReferralUrlRule;-><init>()V

    invoke-virtual {p1, v0, v1}, Lorg/apache/asn1/ber/digester/BERDigester;->addRule([ILorg/apache/asn1/ber/digester/Rule;)V

    return-void
.end method

.method private addCompareRequestRules(Lorg/apache/asn1/ber/digester/BERDigester;)V
    .locals 4

    .line 811
    sget-object v0, Lorg/apache/asn1/ber/primitives/UniversalTag;->SEQUENCE_SEQUENCE_OF:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-virtual {v0}, Lorg/apache/asn1/ber/primitives/UniversalTag;->getPrimitiveTag()I

    move-result v0

    .line 812
    sget-object v1, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->COMPARE_REQUEST:Lorg/apache/ldap/common/berlib/asn1/LdapTag;

    invoke-virtual {v1}, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->getPrimitiveTag()I

    move-result v1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    .line 813
    new-instance v1, Lorg/apache/ldap/common/berlib/asn1/decoder/compare/CompareRequestRule;

    invoke-direct {v1}, Lorg/apache/ldap/common/berlib/asn1/decoder/compare/CompareRequestRule;-><init>()V

    invoke-virtual {p1, v0, v1}, Lorg/apache/asn1/ber/digester/BERDigester;->addRule([ILorg/apache/asn1/ber/digester/Rule;)V

    .line 816
    sget-object v0, Lorg/apache/asn1/ber/primitives/UniversalTag;->SEQUENCE_SEQUENCE_OF:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-virtual {v0}, Lorg/apache/asn1/ber/primitives/UniversalTag;->getPrimitiveTag()I

    move-result v0

    .line 817
    sget-object v1, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->COMPARE_REQUEST:Lorg/apache/ldap/common/berlib/asn1/LdapTag;

    invoke-virtual {v1}, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->getPrimitiveTag()I

    move-result v1

    .line 818
    sget-object v2, Lorg/apache/asn1/ber/primitives/UniversalTag;->OCTET_STRING:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-virtual {v2}, Lorg/apache/asn1/ber/primitives/UniversalTag;->getPrimitiveTag()I

    move-result v2

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    .line 819
    new-instance v1, Lorg/apache/ldap/common/berlib/asn1/decoder/compare/CompareEntryRule;

    invoke-direct {v1}, Lorg/apache/ldap/common/berlib/asn1/decoder/compare/CompareEntryRule;-><init>()V

    invoke-virtual {p1, v0, v1}, Lorg/apache/asn1/ber/digester/BERDigester;->addRule([ILorg/apache/asn1/ber/digester/Rule;)V

    .line 822
    sget-object v0, Lorg/apache/asn1/ber/primitives/UniversalTag;->SEQUENCE_SEQUENCE_OF:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-virtual {v0}, Lorg/apache/asn1/ber/primitives/UniversalTag;->getPrimitiveTag()I

    move-result v0

    .line 823
    sget-object v1, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->COMPARE_REQUEST:Lorg/apache/ldap/common/berlib/asn1/LdapTag;

    invoke-virtual {v1}, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->getPrimitiveTag()I

    move-result v1

    .line 824
    sget-object v2, Lorg/apache/asn1/ber/primitives/UniversalTag;->SEQUENCE_SEQUENCE_OF:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-virtual {v2}, Lorg/apache/asn1/ber/primitives/UniversalTag;->getPrimitiveTag()I

    move-result v2

    .line 825
    sget-object v3, Lorg/apache/asn1/ber/primitives/UniversalTag;->OCTET_STRING:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-virtual {v3}, Lorg/apache/asn1/ber/primitives/UniversalTag;->getPrimitiveTag()I

    move-result v3

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    .line 826
    new-instance v1, Lorg/apache/ldap/common/berlib/asn1/decoder/compare/CompareAVARule;

    invoke-direct {v1}, Lorg/apache/ldap/common/berlib/asn1/decoder/compare/CompareAVARule;-><init>()V

    invoke-virtual {p1, v0, v1}, Lorg/apache/asn1/ber/digester/BERDigester;->addRule([ILorg/apache/asn1/ber/digester/Rule;)V

    return-void
.end method

.method private addCompareResponseRules(Lorg/apache/asn1/ber/digester/BERDigester;)V
    .locals 4

    .line 840
    sget-object v0, Lorg/apache/asn1/ber/primitives/UniversalTag;->SEQUENCE_SEQUENCE_OF:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-virtual {v0}, Lorg/apache/asn1/ber/primitives/UniversalTag;->getPrimitiveTag()I

    move-result v0

    .line 841
    sget-object v1, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->COMPARE_RESPONSE:Lorg/apache/ldap/common/berlib/asn1/LdapTag;

    invoke-virtual {v1}, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->getPrimitiveTag()I

    move-result v1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    .line 842
    new-instance v1, Lorg/apache/ldap/common/berlib/asn1/decoder/compare/CompareResponseRule;

    invoke-direct {v1}, Lorg/apache/ldap/common/berlib/asn1/decoder/compare/CompareResponseRule;-><init>()V

    invoke-virtual {p1, v0, v1}, Lorg/apache/asn1/ber/digester/BERDigester;->addRule([ILorg/apache/asn1/ber/digester/Rule;)V

    const/4 v0, 0x3

    .line 844
    new-array v0, v0, [I

    .line 845
    sget-object v1, Lorg/apache/asn1/ber/primitives/UniversalTag;->SEQUENCE_SEQUENCE_OF:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-virtual {v1}, Lorg/apache/asn1/ber/primitives/UniversalTag;->getPrimitiveTag()I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 846
    sget-object v1, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->COMPARE_RESPONSE:Lorg/apache/ldap/common/berlib/asn1/LdapTag;

    invoke-virtual {v1}, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->getPrimitiveTag()I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    const/high16 v1, 0xa000000

    const/4 v2, 0x2

    .line 849
    aput v1, v0, v2

    .line 850
    new-instance v1, Lorg/apache/ldap/common/berlib/asn1/decoder/ResultCodeRule;

    invoke-direct {v1}, Lorg/apache/ldap/common/berlib/asn1/decoder/ResultCodeRule;-><init>()V

    invoke-virtual {p1, v0, v1}, Lorg/apache/asn1/ber/digester/BERDigester;->addRule([ILorg/apache/asn1/ber/digester/Rule;)V

    .line 853
    sget-object v1, Lorg/apache/asn1/ber/primitives/UniversalTag;->OCTET_STRING:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-virtual {v1}, Lorg/apache/asn1/ber/primitives/UniversalTag;->getPrimitiveTag()I

    move-result v1

    aput v1, v0, v2

    .line 854
    new-instance v1, Lorg/apache/ldap/common/berlib/asn1/decoder/ResultMatchedDNRule;

    invoke-direct {v1}, Lorg/apache/ldap/common/berlib/asn1/decoder/ResultMatchedDNRule;-><init>()V

    invoke-virtual {p1, v0, v1}, Lorg/apache/asn1/ber/digester/BERDigester;->addRule([ILorg/apache/asn1/ber/digester/Rule;)V

    .line 855
    new-instance v1, Lorg/apache/ldap/common/berlib/asn1/decoder/ErrorMessageRule;

    invoke-direct {v1}, Lorg/apache/ldap/common/berlib/asn1/decoder/ErrorMessageRule;-><init>()V

    invoke-virtual {p1, v0, v1}, Lorg/apache/asn1/ber/digester/BERDigester;->addRule([ILorg/apache/asn1/ber/digester/Rule;)V

    .line 858
    sget-object v1, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->REFERRAL_TAG:Lorg/apache/asn1/ber/primitives/ContextSpecificTag;

    invoke-virtual {v1}, Lorg/apache/asn1/ber/primitives/ContextSpecificTag;->getPrimitiveTag()I

    move-result v1

    aput v1, v0, v2

    .line 859
    new-instance v1, Lorg/apache/ldap/common/berlib/asn1/decoder/ReferralRule;

    invoke-direct {v1}, Lorg/apache/ldap/common/berlib/asn1/decoder/ReferralRule;-><init>()V

    invoke-virtual {p1, v0, v1}, Lorg/apache/asn1/ber/digester/BERDigester;->addRule([ILorg/apache/asn1/ber/digester/Rule;)V

    .line 863
    sget-object v0, Lorg/apache/asn1/ber/primitives/UniversalTag;->SEQUENCE_SEQUENCE_OF:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-virtual {v0}, Lorg/apache/asn1/ber/primitives/UniversalTag;->getPrimitiveTag()I

    move-result v0

    .line 864
    sget-object v1, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->COMPARE_RESPONSE:Lorg/apache/ldap/common/berlib/asn1/LdapTag;

    invoke-virtual {v1}, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->getPrimitiveTag()I

    move-result v1

    .line 865
    sget-object v2, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->REFERRAL_TAG:Lorg/apache/asn1/ber/primitives/ContextSpecificTag;

    invoke-virtual {v2}, Lorg/apache/asn1/ber/primitives/ContextSpecificTag;->getPrimitiveTag()I

    move-result v2

    .line 866
    sget-object v3, Lorg/apache/asn1/ber/primitives/UniversalTag;->OCTET_STRING:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-virtual {v3}, Lorg/apache/asn1/ber/primitives/UniversalTag;->getPrimitiveTag()I

    move-result v3

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    .line 867
    new-instance v1, Lorg/apache/ldap/common/berlib/asn1/decoder/ReferralUrlRule;

    invoke-direct {v1}, Lorg/apache/ldap/common/berlib/asn1/decoder/ReferralUrlRule;-><init>()V

    invoke-virtual {p1, v0, v1}, Lorg/apache/asn1/ber/digester/BERDigester;->addRule([ILorg/apache/asn1/ber/digester/Rule;)V

    return-void
.end method

.method private addDeleteRequestRules(Lorg/apache/asn1/ber/digester/BERDigester;)V
    .locals 2

    .line 798
    sget-object v0, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->DEL_REQUEST:Lorg/apache/ldap/common/berlib/asn1/LdapTag;

    invoke-virtual {v0}, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->getPrimitiveTag()I

    move-result v0

    const/high16 v1, 0x10000000

    filled-new-array {v1, v0}, [I

    move-result-object v0

    .line 799
    new-instance v1, Lorg/apache/ldap/common/berlib/asn1/decoder/delete/DeleteRequestRule;

    invoke-direct {v1}, Lorg/apache/ldap/common/berlib/asn1/decoder/delete/DeleteRequestRule;-><init>()V

    invoke-virtual {p1, v0, v1}, Lorg/apache/asn1/ber/digester/BERDigester;->addRule([ILorg/apache/asn1/ber/digester/Rule;)V

    return-void
.end method

.method private addDeleteResponseRules(Lorg/apache/asn1/ber/digester/BERDigester;)V
    .locals 6

    const/high16 v0, 0x10000000

    const/high16 v1, 0x4b000000    # 8388608.0f

    .line 757
    filled-new-array {v0, v1}, [I

    move-result-object v2

    .line 758
    new-instance v3, Lorg/apache/ldap/common/berlib/asn1/decoder/delete/DeleteResponseRule;

    invoke-direct {v3}, Lorg/apache/ldap/common/berlib/asn1/decoder/delete/DeleteResponseRule;-><init>()V

    invoke-virtual {p1, v2, v3}, Lorg/apache/asn1/ber/digester/BERDigester;->addRule([ILorg/apache/asn1/ber/digester/Rule;)V

    const/4 v2, 0x3

    .line 760
    new-array v2, v2, [I

    const/4 v3, 0x0

    .line 761
    aput v0, v2, v3

    const/4 v3, 0x1

    .line 762
    aput v1, v2, v3

    const/high16 v3, 0xa000000

    const/4 v4, 0x2

    .line 765
    aput v3, v2, v4

    .line 766
    new-instance v3, Lorg/apache/ldap/common/berlib/asn1/decoder/ResultCodeRule;

    invoke-direct {v3}, Lorg/apache/ldap/common/berlib/asn1/decoder/ResultCodeRule;-><init>()V

    invoke-virtual {p1, v2, v3}, Lorg/apache/asn1/ber/digester/BERDigester;->addRule([ILorg/apache/asn1/ber/digester/Rule;)V

    const/high16 v3, 0x4000000

    .line 769
    aput v3, v2, v4

    .line 770
    new-instance v5, Lorg/apache/ldap/common/berlib/asn1/decoder/ResultMatchedDNRule;

    invoke-direct {v5}, Lorg/apache/ldap/common/berlib/asn1/decoder/ResultMatchedDNRule;-><init>()V

    invoke-virtual {p1, v2, v5}, Lorg/apache/asn1/ber/digester/BERDigester;->addRule([ILorg/apache/asn1/ber/digester/Rule;)V

    .line 771
    new-instance v5, Lorg/apache/ldap/common/berlib/asn1/decoder/ErrorMessageRule;

    invoke-direct {v5}, Lorg/apache/ldap/common/berlib/asn1/decoder/ErrorMessageRule;-><init>()V

    invoke-virtual {p1, v2, v5}, Lorg/apache/asn1/ber/digester/BERDigester;->addRule([ILorg/apache/asn1/ber/digester/Rule;)V

    .line 774
    sget-object v5, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->REFERRAL_TAG:Lorg/apache/asn1/ber/primitives/ContextSpecificTag;

    invoke-virtual {v5}, Lorg/apache/asn1/ber/primitives/ContextSpecificTag;->getPrimitiveTag()I

    move-result v5

    aput v5, v2, v4

    .line 775
    new-instance v4, Lorg/apache/ldap/common/berlib/asn1/decoder/ReferralRule;

    invoke-direct {v4}, Lorg/apache/ldap/common/berlib/asn1/decoder/ReferralRule;-><init>()V

    invoke-virtual {p1, v2, v4}, Lorg/apache/asn1/ber/digester/BERDigester;->addRule([ILorg/apache/asn1/ber/digester/Rule;)V

    .line 781
    sget-object v2, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->REFERRAL_TAG:Lorg/apache/asn1/ber/primitives/ContextSpecificTag;

    invoke-virtual {v2}, Lorg/apache/asn1/ber/primitives/ContextSpecificTag;->getPrimitiveTag()I

    move-result v2

    .line 782
    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    .line 783
    new-instance v1, Lorg/apache/ldap/common/berlib/asn1/decoder/ReferralUrlRule;

    invoke-direct {v1}, Lorg/apache/ldap/common/berlib/asn1/decoder/ReferralUrlRule;-><init>()V

    invoke-virtual {p1, v0, v1}, Lorg/apache/asn1/ber/digester/BERDigester;->addRule([ILorg/apache/asn1/ber/digester/Rule;)V

    return-void
.end method

.method private addExtendedRequestRules(Lorg/apache/asn1/ber/digester/BERDigester;)V
    .locals 3

    .line 667
    sget-object v0, Lorg/apache/asn1/ber/primitives/UniversalTag;->SEQUENCE_SEQUENCE_OF:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-virtual {v0}, Lorg/apache/asn1/ber/primitives/UniversalTag;->getPrimitiveTag()I

    move-result v0

    .line 668
    sget-object v1, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->EXTENDED_REQUEST:Lorg/apache/ldap/common/berlib/asn1/LdapTag;

    invoke-virtual {v1}, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->getPrimitiveTag()I

    move-result v1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    .line 669
    new-instance v1, Lorg/apache/ldap/common/berlib/asn1/decoder/extended/ExtendedRequestRule;

    invoke-direct {v1}, Lorg/apache/ldap/common/berlib/asn1/decoder/extended/ExtendedRequestRule;-><init>()V

    invoke-virtual {p1, v0, v1}, Lorg/apache/asn1/ber/digester/BERDigester;->addRule([ILorg/apache/asn1/ber/digester/Rule;)V

    const/4 v0, 0x3

    .line 671
    new-array v0, v0, [I

    .line 672
    sget-object v1, Lorg/apache/asn1/ber/primitives/UniversalTag;->SEQUENCE_SEQUENCE_OF:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-virtual {v1}, Lorg/apache/asn1/ber/primitives/UniversalTag;->getPrimitiveTag()I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 673
    sget-object v1, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->EXTENDED_REQUEST:Lorg/apache/ldap/common/berlib/asn1/LdapTag;

    invoke-virtual {v1}, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->getPrimitiveTag()I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 674
    sget-object v1, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->EXTENDED_REQUEST_NAME_TAG:Lorg/apache/asn1/ber/primitives/ContextSpecificTag;

    invoke-virtual {v1}, Lorg/apache/asn1/ber/primitives/ContextSpecificTag;->getPrimitiveTag()I

    move-result v1

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 675
    new-instance v1, Lorg/apache/ldap/common/berlib/asn1/decoder/extended/ExtendedRequestOidRule;

    invoke-direct {v1}, Lorg/apache/ldap/common/berlib/asn1/decoder/extended/ExtendedRequestOidRule;-><init>()V

    invoke-virtual {p1, v0, v1}, Lorg/apache/asn1/ber/digester/BERDigester;->addRule([ILorg/apache/asn1/ber/digester/Rule;)V

    .line 677
    sget-object v1, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->EXTENDED_REQUEST_VALUE_TAG:Lorg/apache/asn1/ber/primitives/ContextSpecificTag;

    invoke-virtual {v1}, Lorg/apache/asn1/ber/primitives/ContextSpecificTag;->getPrimitiveTag()I

    move-result v1

    aput v1, v0, v2

    .line 678
    new-instance v1, Lorg/apache/ldap/common/berlib/asn1/decoder/extended/ExtendedRequestPayloadRule;

    invoke-direct {v1}, Lorg/apache/ldap/common/berlib/asn1/decoder/extended/ExtendedRequestPayloadRule;-><init>()V

    invoke-virtual {p1, v0, v1}, Lorg/apache/asn1/ber/digester/BERDigester;->addRule([ILorg/apache/asn1/ber/digester/Rule;)V

    return-void
.end method

.method private addExtendedResponseRules(Lorg/apache/asn1/ber/digester/BERDigester;)V
    .locals 4

    .line 692
    sget-object v0, Lorg/apache/asn1/ber/primitives/UniversalTag;->SEQUENCE_SEQUENCE_OF:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-virtual {v0}, Lorg/apache/asn1/ber/primitives/UniversalTag;->getPrimitiveTag()I

    move-result v0

    .line 693
    sget-object v1, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->EXTENDED_RESPONSE:Lorg/apache/ldap/common/berlib/asn1/LdapTag;

    invoke-virtual {v1}, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->getPrimitiveTag()I

    move-result v1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    .line 694
    new-instance v1, Lorg/apache/ldap/common/berlib/asn1/decoder/extended/ExtendedResponseRule;

    invoke-direct {v1}, Lorg/apache/ldap/common/berlib/asn1/decoder/extended/ExtendedResponseRule;-><init>()V

    invoke-virtual {p1, v0, v1}, Lorg/apache/asn1/ber/digester/BERDigester;->addRule([ILorg/apache/asn1/ber/digester/Rule;)V

    const/4 v0, 0x3

    .line 697
    new-array v0, v0, [I

    .line 698
    sget-object v1, Lorg/apache/asn1/ber/primitives/UniversalTag;->SEQUENCE_SEQUENCE_OF:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-virtual {v1}, Lorg/apache/asn1/ber/primitives/UniversalTag;->getPrimitiveTag()I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 699
    sget-object v1, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->EXTENDED_RESPONSE:Lorg/apache/ldap/common/berlib/asn1/LdapTag;

    invoke-virtual {v1}, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->getPrimitiveTag()I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 702
    sget-object v1, Lorg/apache/asn1/ber/primitives/UniversalTag;->ENUMERATED:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-virtual {v1}, Lorg/apache/asn1/ber/primitives/UniversalTag;->getPrimitiveTag()I

    move-result v1

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 703
    new-instance v1, Lorg/apache/ldap/common/berlib/asn1/decoder/ResultCodeRule;

    invoke-direct {v1}, Lorg/apache/ldap/common/berlib/asn1/decoder/ResultCodeRule;-><init>()V

    invoke-virtual {p1, v0, v1}, Lorg/apache/asn1/ber/digester/BERDigester;->addRule([ILorg/apache/asn1/ber/digester/Rule;)V

    .line 706
    sget-object v1, Lorg/apache/asn1/ber/primitives/UniversalTag;->OCTET_STRING:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-virtual {v1}, Lorg/apache/asn1/ber/primitives/UniversalTag;->getPrimitiveTag()I

    move-result v1

    aput v1, v0, v2

    .line 707
    new-instance v1, Lorg/apache/ldap/common/berlib/asn1/decoder/ResultMatchedDNRule;

    invoke-direct {v1}, Lorg/apache/ldap/common/berlib/asn1/decoder/ResultMatchedDNRule;-><init>()V

    invoke-virtual {p1, v0, v1}, Lorg/apache/asn1/ber/digester/BERDigester;->addRule([ILorg/apache/asn1/ber/digester/Rule;)V

    .line 708
    new-instance v1, Lorg/apache/ldap/common/berlib/asn1/decoder/ErrorMessageRule;

    invoke-direct {v1}, Lorg/apache/ldap/common/berlib/asn1/decoder/ErrorMessageRule;-><init>()V

    invoke-virtual {p1, v0, v1}, Lorg/apache/asn1/ber/digester/BERDigester;->addRule([ILorg/apache/asn1/ber/digester/Rule;)V

    .line 711
    sget-object v1, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->REFERRAL_TAG:Lorg/apache/asn1/ber/primitives/ContextSpecificTag;

    invoke-virtual {v1}, Lorg/apache/asn1/ber/primitives/ContextSpecificTag;->getPrimitiveTag()I

    move-result v1

    aput v1, v0, v2

    .line 712
    new-instance v1, Lorg/apache/ldap/common/berlib/asn1/decoder/ReferralRule;

    invoke-direct {v1}, Lorg/apache/ldap/common/berlib/asn1/decoder/ReferralRule;-><init>()V

    invoke-virtual {p1, v0, v1}, Lorg/apache/asn1/ber/digester/BERDigester;->addRule([ILorg/apache/asn1/ber/digester/Rule;)V

    .line 715
    sget-object v1, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->EXTENDED_RESPONSE_NAME_TAG:Lorg/apache/asn1/ber/primitives/ContextSpecificTag;

    invoke-virtual {v1}, Lorg/apache/asn1/ber/primitives/ContextSpecificTag;->getPrimitiveTag()I

    move-result v1

    aput v1, v0, v2

    .line 716
    new-instance v1, Lorg/apache/ldap/common/berlib/asn1/decoder/extended/ExtendedResponseOidRule;

    invoke-direct {v1}, Lorg/apache/ldap/common/berlib/asn1/decoder/extended/ExtendedResponseOidRule;-><init>()V

    invoke-virtual {p1, v0, v1}, Lorg/apache/asn1/ber/digester/BERDigester;->addRule([ILorg/apache/asn1/ber/digester/Rule;)V

    .line 719
    sget-object v1, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->EXTENDED_RESPONSE_VALUE_TAG:Lorg/apache/asn1/ber/primitives/ContextSpecificTag;

    invoke-virtual {v1}, Lorg/apache/asn1/ber/primitives/ContextSpecificTag;->getPrimitiveTag()I

    move-result v1

    aput v1, v0, v2

    .line 720
    new-instance v1, Lorg/apache/ldap/common/berlib/asn1/decoder/extended/ExtendedResponsePayloadRule;

    invoke-direct {v1}, Lorg/apache/ldap/common/berlib/asn1/decoder/extended/ExtendedResponsePayloadRule;-><init>()V

    invoke-virtual {p1, v0, v1}, Lorg/apache/asn1/ber/digester/BERDigester;->addRule([ILorg/apache/asn1/ber/digester/Rule;)V

    .line 724
    sget-object v0, Lorg/apache/asn1/ber/primitives/UniversalTag;->SEQUENCE_SEQUENCE_OF:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-virtual {v0}, Lorg/apache/asn1/ber/primitives/UniversalTag;->getPrimitiveTag()I

    move-result v0

    .line 725
    sget-object v1, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->EXTENDED_RESPONSE:Lorg/apache/ldap/common/berlib/asn1/LdapTag;

    invoke-virtual {v1}, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->getPrimitiveTag()I

    move-result v1

    .line 726
    sget-object v2, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->REFERRAL_TAG:Lorg/apache/asn1/ber/primitives/ContextSpecificTag;

    invoke-virtual {v2}, Lorg/apache/asn1/ber/primitives/ContextSpecificTag;->getPrimitiveTag()I

    move-result v2

    .line 727
    sget-object v3, Lorg/apache/asn1/ber/primitives/UniversalTag;->OCTET_STRING:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-virtual {v3}, Lorg/apache/asn1/ber/primitives/UniversalTag;->getPrimitiveTag()I

    move-result v3

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    .line 728
    new-instance v1, Lorg/apache/ldap/common/berlib/asn1/decoder/ReferralUrlRule;

    invoke-direct {v1}, Lorg/apache/ldap/common/berlib/asn1/decoder/ReferralUrlRule;-><init>()V

    invoke-virtual {p1, v0, v1}, Lorg/apache/asn1/ber/digester/BERDigester;->addRule([ILorg/apache/asn1/ber/digester/Rule;)V

    return-void
.end method

.method private addMessageIdRules(Lorg/apache/asn1/ber/digester/BERDigester;)V
    .locals 2

    .line 740
    sget-object v0, Lorg/apache/asn1/ber/primitives/UniversalTag;->SEQUENCE_SEQUENCE_OF:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-virtual {v0}, Lorg/apache/asn1/ber/primitives/UniversalTag;->getValue()I

    move-result v0

    .line 741
    sget-object v1, Lorg/apache/asn1/ber/primitives/UniversalTag;->INTEGER:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-virtual {v1}, Lorg/apache/asn1/ber/primitives/UniversalTag;->getValue()I

    move-result v1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    .line 742
    new-instance v1, Lorg/apache/asn1/ber/digester/rules/PrimitiveIntDecodeRule;

    invoke-direct {v1}, Lorg/apache/asn1/ber/digester/rules/PrimitiveIntDecodeRule;-><init>()V

    invoke-virtual {p1, v0, v1}, Lorg/apache/asn1/ber/digester/BERDigester;->addRule([ILorg/apache/asn1/ber/digester/Rule;)V

    return-void
.end method

.method private addModifyDnRequestRules(Lorg/apache/asn1/ber/digester/BERDigester;)V
    .locals 3

    .line 596
    sget-object v0, Lorg/apache/asn1/ber/primitives/UniversalTag;->SEQUENCE_SEQUENCE_OF:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-virtual {v0}, Lorg/apache/asn1/ber/primitives/UniversalTag;->getPrimitiveTag()I

    move-result v0

    .line 597
    sget-object v1, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->MODIFYDN_REQUEST:Lorg/apache/ldap/common/berlib/asn1/LdapTag;

    invoke-virtual {v1}, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->getPrimitiveTag()I

    move-result v1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    .line 598
    new-instance v1, Lorg/apache/ldap/common/berlib/asn1/decoder/modifydn/ModifyDnRequestRule;

    invoke-direct {v1}, Lorg/apache/ldap/common/berlib/asn1/decoder/modifydn/ModifyDnRequestRule;-><init>()V

    invoke-virtual {p1, v0, v1}, Lorg/apache/asn1/ber/digester/BERDigester;->addRule([ILorg/apache/asn1/ber/digester/Rule;)V

    const/4 v0, 0x3

    .line 600
    new-array v0, v0, [I

    .line 601
    sget-object v1, Lorg/apache/asn1/ber/primitives/UniversalTag;->SEQUENCE_SEQUENCE_OF:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-virtual {v1}, Lorg/apache/asn1/ber/primitives/UniversalTag;->getPrimitiveTag()I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 602
    sget-object v1, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->MODIFYDN_REQUEST:Lorg/apache/ldap/common/berlib/asn1/LdapTag;

    invoke-virtual {v1}, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->getPrimitiveTag()I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 603
    sget-object v1, Lorg/apache/asn1/ber/primitives/UniversalTag;->OCTET_STRING:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-virtual {v1}, Lorg/apache/asn1/ber/primitives/UniversalTag;->getPrimitiveTag()I

    move-result v1

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 604
    new-instance v1, Lorg/apache/ldap/common/berlib/asn1/decoder/modifydn/ModifyDnRequestEntryRule;

    invoke-direct {v1}, Lorg/apache/ldap/common/berlib/asn1/decoder/modifydn/ModifyDnRequestEntryRule;-><init>()V

    invoke-virtual {p1, v0, v1}, Lorg/apache/asn1/ber/digester/BERDigester;->addRule([ILorg/apache/asn1/ber/digester/Rule;)V

    .line 606
    sget-object v1, Lorg/apache/asn1/ber/primitives/UniversalTag;->OCTET_STRING:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-virtual {v1}, Lorg/apache/asn1/ber/primitives/UniversalTag;->getPrimitiveTag()I

    move-result v1

    aput v1, v0, v2

    .line 607
    new-instance v1, Lorg/apache/ldap/common/berlib/asn1/decoder/modifydn/ModifyDnRequestNewRdnRule;

    invoke-direct {v1}, Lorg/apache/ldap/common/berlib/asn1/decoder/modifydn/ModifyDnRequestNewRdnRule;-><init>()V

    invoke-virtual {p1, v0, v1}, Lorg/apache/asn1/ber/digester/BERDigester;->addRule([ILorg/apache/asn1/ber/digester/Rule;)V

    .line 609
    sget-object v1, Lorg/apache/asn1/ber/primitives/UniversalTag;->BOOLEAN:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-virtual {v1}, Lorg/apache/asn1/ber/primitives/UniversalTag;->getPrimitiveTag()I

    move-result v1

    aput v1, v0, v2

    .line 610
    new-instance v1, Lorg/apache/ldap/common/berlib/asn1/decoder/modifydn/ModifyDnRequestDeleteOldRdnRule;

    invoke-direct {v1}, Lorg/apache/ldap/common/berlib/asn1/decoder/modifydn/ModifyDnRequestDeleteOldRdnRule;-><init>()V

    invoke-virtual {p1, v0, v1}, Lorg/apache/asn1/ber/digester/BERDigester;->addRule([ILorg/apache/asn1/ber/digester/Rule;)V

    .line 612
    sget-object v1, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->MODIFYDN_REQUEST_NEWSUP_TAG:Lorg/apache/asn1/ber/primitives/ContextSpecificTag;

    invoke-virtual {v1}, Lorg/apache/asn1/ber/primitives/ContextSpecificTag;->getPrimitiveTag()I

    move-result v1

    aput v1, v0, v2

    .line 613
    new-instance v1, Lorg/apache/ldap/common/berlib/asn1/decoder/modifydn/ModifyDnRequestNewSuperiorRule;

    invoke-direct {v1}, Lorg/apache/ldap/common/berlib/asn1/decoder/modifydn/ModifyDnRequestNewSuperiorRule;-><init>()V

    invoke-virtual {p1, v0, v1}, Lorg/apache/asn1/ber/digester/BERDigester;->addRule([ILorg/apache/asn1/ber/digester/Rule;)V

    return-void
.end method

.method private addModifyDnResponseRules(Lorg/apache/asn1/ber/digester/BERDigester;)V
    .locals 4

    .line 627
    sget-object v0, Lorg/apache/asn1/ber/primitives/UniversalTag;->SEQUENCE_SEQUENCE_OF:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-virtual {v0}, Lorg/apache/asn1/ber/primitives/UniversalTag;->getPrimitiveTag()I

    move-result v0

    .line 628
    sget-object v1, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->MODIFYDN_RESPONSE:Lorg/apache/ldap/common/berlib/asn1/LdapTag;

    invoke-virtual {v1}, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->getPrimitiveTag()I

    move-result v1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    .line 629
    new-instance v1, Lorg/apache/ldap/common/berlib/asn1/decoder/modifydn/ModifyDnResponseRule;

    invoke-direct {v1}, Lorg/apache/ldap/common/berlib/asn1/decoder/modifydn/ModifyDnResponseRule;-><init>()V

    invoke-virtual {p1, v0, v1}, Lorg/apache/asn1/ber/digester/BERDigester;->addRule([ILorg/apache/asn1/ber/digester/Rule;)V

    const/4 v0, 0x3

    .line 632
    new-array v0, v0, [I

    .line 633
    sget-object v1, Lorg/apache/asn1/ber/primitives/UniversalTag;->SEQUENCE_SEQUENCE_OF:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-virtual {v1}, Lorg/apache/asn1/ber/primitives/UniversalTag;->getPrimitiveTag()I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 634
    sget-object v1, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->MODIFYDN_RESPONSE:Lorg/apache/ldap/common/berlib/asn1/LdapTag;

    invoke-virtual {v1}, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->getPrimitiveTag()I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 637
    sget-object v1, Lorg/apache/asn1/ber/primitives/UniversalTag;->ENUMERATED:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-virtual {v1}, Lorg/apache/asn1/ber/primitives/UniversalTag;->getPrimitiveTag()I

    move-result v1

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 638
    new-instance v1, Lorg/apache/ldap/common/berlib/asn1/decoder/ResultCodeRule;

    invoke-direct {v1}, Lorg/apache/ldap/common/berlib/asn1/decoder/ResultCodeRule;-><init>()V

    invoke-virtual {p1, v0, v1}, Lorg/apache/asn1/ber/digester/BERDigester;->addRule([ILorg/apache/asn1/ber/digester/Rule;)V

    .line 641
    sget-object v1, Lorg/apache/asn1/ber/primitives/UniversalTag;->OCTET_STRING:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-virtual {v1}, Lorg/apache/asn1/ber/primitives/UniversalTag;->getPrimitiveTag()I

    move-result v1

    aput v1, v0, v2

    .line 642
    new-instance v1, Lorg/apache/ldap/common/berlib/asn1/decoder/ResultMatchedDNRule;

    invoke-direct {v1}, Lorg/apache/ldap/common/berlib/asn1/decoder/ResultMatchedDNRule;-><init>()V

    invoke-virtual {p1, v0, v1}, Lorg/apache/asn1/ber/digester/BERDigester;->addRule([ILorg/apache/asn1/ber/digester/Rule;)V

    .line 643
    new-instance v1, Lorg/apache/ldap/common/berlib/asn1/decoder/ErrorMessageRule;

    invoke-direct {v1}, Lorg/apache/ldap/common/berlib/asn1/decoder/ErrorMessageRule;-><init>()V

    invoke-virtual {p1, v0, v1}, Lorg/apache/asn1/ber/digester/BERDigester;->addRule([ILorg/apache/asn1/ber/digester/Rule;)V

    .line 646
    sget-object v1, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->REFERRAL_TAG:Lorg/apache/asn1/ber/primitives/ContextSpecificTag;

    invoke-virtual {v1}, Lorg/apache/asn1/ber/primitives/ContextSpecificTag;->getPrimitiveTag()I

    move-result v1

    aput v1, v0, v2

    .line 647
    new-instance v1, Lorg/apache/ldap/common/berlib/asn1/decoder/ReferralRule;

    invoke-direct {v1}, Lorg/apache/ldap/common/berlib/asn1/decoder/ReferralRule;-><init>()V

    invoke-virtual {p1, v0, v1}, Lorg/apache/asn1/ber/digester/BERDigester;->addRule([ILorg/apache/asn1/ber/digester/Rule;)V

    .line 651
    sget-object v0, Lorg/apache/asn1/ber/primitives/UniversalTag;->SEQUENCE_SEQUENCE_OF:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-virtual {v0}, Lorg/apache/asn1/ber/primitives/UniversalTag;->getPrimitiveTag()I

    move-result v0

    .line 652
    sget-object v1, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->MODIFYDN_RESPONSE:Lorg/apache/ldap/common/berlib/asn1/LdapTag;

    invoke-virtual {v1}, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->getPrimitiveTag()I

    move-result v1

    .line 653
    sget-object v2, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->REFERRAL_TAG:Lorg/apache/asn1/ber/primitives/ContextSpecificTag;

    invoke-virtual {v2}, Lorg/apache/asn1/ber/primitives/ContextSpecificTag;->getPrimitiveTag()I

    move-result v2

    .line 654
    sget-object v3, Lorg/apache/asn1/ber/primitives/UniversalTag;->OCTET_STRING:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-virtual {v3}, Lorg/apache/asn1/ber/primitives/UniversalTag;->getPrimitiveTag()I

    move-result v3

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    .line 655
    new-instance v1, Lorg/apache/ldap/common/berlib/asn1/decoder/ReferralUrlRule;

    invoke-direct {v1}, Lorg/apache/ldap/common/berlib/asn1/decoder/ReferralUrlRule;-><init>()V

    invoke-virtual {p1, v0, v1}, Lorg/apache/asn1/ber/digester/BERDigester;->addRule([ILorg/apache/asn1/ber/digester/Rule;)V

    return-void
.end method

.method private addModifyRequestRules(Lorg/apache/asn1/ber/digester/BERDigester;)V
    .locals 8

    .line 312
    sget-object v0, Lorg/apache/asn1/ber/primitives/UniversalTag;->SEQUENCE_SEQUENCE_OF:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-virtual {v0}, Lorg/apache/asn1/ber/primitives/UniversalTag;->getPrimitiveTag()I

    move-result v0

    .line 313
    sget-object v1, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->MODIFY_REQUEST:Lorg/apache/ldap/common/berlib/asn1/LdapTag;

    invoke-virtual {v1}, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->getPrimitiveTag()I

    move-result v1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    .line 314
    new-instance v1, Lorg/apache/ldap/common/berlib/asn1/decoder/modify/ModifyRequestRule;

    invoke-direct {v1}, Lorg/apache/ldap/common/berlib/asn1/decoder/modify/ModifyRequestRule;-><init>()V

    invoke-virtual {p1, v0, v1}, Lorg/apache/asn1/ber/digester/BERDigester;->addRule([ILorg/apache/asn1/ber/digester/Rule;)V

    .line 318
    sget-object v0, Lorg/apache/asn1/ber/primitives/UniversalTag;->SEQUENCE_SEQUENCE_OF:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-virtual {v0}, Lorg/apache/asn1/ber/primitives/UniversalTag;->getPrimitiveTag()I

    move-result v0

    .line 319
    sget-object v1, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->MODIFY_REQUEST:Lorg/apache/ldap/common/berlib/asn1/LdapTag;

    invoke-virtual {v1}, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->getPrimitiveTag()I

    move-result v1

    .line 320
    sget-object v2, Lorg/apache/asn1/ber/primitives/UniversalTag;->OCTET_STRING:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-virtual {v2}, Lorg/apache/asn1/ber/primitives/UniversalTag;->getPrimitiveTag()I

    move-result v2

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    .line 321
    new-instance v1, Lorg/apache/ldap/common/berlib/asn1/decoder/modify/ModifyRequestEntryDnRule;

    invoke-direct {v1}, Lorg/apache/ldap/common/berlib/asn1/decoder/modify/ModifyRequestEntryDnRule;-><init>()V

    invoke-virtual {p1, v0, v1}, Lorg/apache/asn1/ber/digester/BERDigester;->addRule([ILorg/apache/asn1/ber/digester/Rule;)V

    const/4 v0, 0x5

    .line 323
    new-array v0, v0, [I

    .line 324
    sget-object v1, Lorg/apache/asn1/ber/primitives/UniversalTag;->SEQUENCE_SEQUENCE_OF:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-virtual {v1}, Lorg/apache/asn1/ber/primitives/UniversalTag;->getPrimitiveTag()I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 325
    sget-object v1, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->MODIFY_REQUEST:Lorg/apache/ldap/common/berlib/asn1/LdapTag;

    invoke-virtual {v1}, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->getPrimitiveTag()I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 326
    sget-object v1, Lorg/apache/asn1/ber/primitives/UniversalTag;->SEQUENCE_SEQUENCE_OF:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-virtual {v1}, Lorg/apache/asn1/ber/primitives/UniversalTag;->getPrimitiveTag()I

    move-result v1

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 327
    sget-object v1, Lorg/apache/asn1/ber/primitives/UniversalTag;->SEQUENCE_SEQUENCE_OF:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-virtual {v1}, Lorg/apache/asn1/ber/primitives/UniversalTag;->getPrimitiveTag()I

    move-result v1

    const/4 v2, 0x3

    aput v1, v0, v2

    .line 328
    sget-object v1, Lorg/apache/asn1/ber/primitives/UniversalTag;->ENUMERATED:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-virtual {v1}, Lorg/apache/asn1/ber/primitives/UniversalTag;->getPrimitiveTag()I

    move-result v1

    const/4 v2, 0x4

    aput v1, v0, v2

    .line 329
    new-instance v1, Lorg/apache/asn1/ber/digester/rules/PrimitiveIntDecodeRule;

    sget-object v3, Lorg/apache/asn1/ber/primitives/UniversalTag;->ENUMERATED:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-direct {v1, v3}, Lorg/apache/asn1/ber/digester/rules/PrimitiveIntDecodeRule;-><init>(Lorg/apache/asn1/ber/TagEnum;)V

    invoke-virtual {p1, v0, v1}, Lorg/apache/asn1/ber/digester/BERDigester;->addRule([ILorg/apache/asn1/ber/digester/Rule;)V

    .line 332
    sget-object v1, Lorg/apache/asn1/ber/primitives/UniversalTag;->SEQUENCE_SEQUENCE_OF:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-virtual {v1}, Lorg/apache/asn1/ber/primitives/UniversalTag;->getPrimitiveTag()I

    move-result v1

    aput v1, v0, v2

    .line 333
    new-instance v1, Lorg/apache/asn1/ber/digester/rules/PopOnFinish;

    invoke-direct {v1}, Lorg/apache/asn1/ber/digester/rules/PopOnFinish;-><init>()V

    invoke-virtual {p1, v0, v1}, Lorg/apache/asn1/ber/digester/BERDigester;->addRule([ILorg/apache/asn1/ber/digester/Rule;)V

    .line 336
    sget-object v0, Lorg/apache/asn1/ber/primitives/UniversalTag;->SEQUENCE_SEQUENCE_OF:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-virtual {v0}, Lorg/apache/asn1/ber/primitives/UniversalTag;->getPrimitiveTag()I

    move-result v1

    .line 337
    sget-object v0, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->MODIFY_REQUEST:Lorg/apache/ldap/common/berlib/asn1/LdapTag;

    invoke-virtual {v0}, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->getPrimitiveTag()I

    move-result v2

    .line 338
    sget-object v0, Lorg/apache/asn1/ber/primitives/UniversalTag;->SEQUENCE_SEQUENCE_OF:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-virtual {v0}, Lorg/apache/asn1/ber/primitives/UniversalTag;->getPrimitiveTag()I

    move-result v3

    .line 339
    sget-object v0, Lorg/apache/asn1/ber/primitives/UniversalTag;->SEQUENCE_SEQUENCE_OF:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-virtual {v0}, Lorg/apache/asn1/ber/primitives/UniversalTag;->getPrimitiveTag()I

    move-result v4

    .line 340
    sget-object v0, Lorg/apache/asn1/ber/primitives/UniversalTag;->SEQUENCE_SEQUENCE_OF:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-virtual {v0}, Lorg/apache/asn1/ber/primitives/UniversalTag;->getPrimitiveTag()I

    move-result v5

    .line 341
    sget-object v0, Lorg/apache/asn1/ber/primitives/UniversalTag;->OCTET_STRING:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-virtual {v0}, Lorg/apache/asn1/ber/primitives/UniversalTag;->getPrimitiveTag()I

    move-result v6

    filled-new-array/range {v1 .. v6}, [I

    move-result-object v0

    .line 342
    new-instance v1, Lorg/apache/ldap/common/berlib/asn1/decoder/modify/ModificationItemRule;

    invoke-direct {v1}, Lorg/apache/ldap/common/berlib/asn1/decoder/modify/ModificationItemRule;-><init>()V

    invoke-virtual {p1, v0, v1}, Lorg/apache/asn1/ber/digester/BERDigester;->addRule([ILorg/apache/asn1/ber/digester/Rule;)V

    .line 345
    sget-object v0, Lorg/apache/asn1/ber/primitives/UniversalTag;->SEQUENCE_SEQUENCE_OF:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-virtual {v0}, Lorg/apache/asn1/ber/primitives/UniversalTag;->getPrimitiveTag()I

    move-result v1

    .line 346
    sget-object v0, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->MODIFY_REQUEST:Lorg/apache/ldap/common/berlib/asn1/LdapTag;

    invoke-virtual {v0}, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->getPrimitiveTag()I

    move-result v2

    .line 347
    sget-object v0, Lorg/apache/asn1/ber/primitives/UniversalTag;->SEQUENCE_SEQUENCE_OF:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-virtual {v0}, Lorg/apache/asn1/ber/primitives/UniversalTag;->getPrimitiveTag()I

    move-result v3

    .line 348
    sget-object v0, Lorg/apache/asn1/ber/primitives/UniversalTag;->SEQUENCE_SEQUENCE_OF:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-virtual {v0}, Lorg/apache/asn1/ber/primitives/UniversalTag;->getPrimitiveTag()I

    move-result v4

    .line 349
    sget-object v0, Lorg/apache/asn1/ber/primitives/UniversalTag;->SEQUENCE_SEQUENCE_OF:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-virtual {v0}, Lorg/apache/asn1/ber/primitives/UniversalTag;->getPrimitiveTag()I

    move-result v5

    .line 350
    sget-object v0, Lorg/apache/asn1/ber/primitives/UniversalTag;->SET_SET_OF:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-virtual {v0}, Lorg/apache/asn1/ber/primitives/UniversalTag;->getPrimitiveTag()I

    move-result v6

    .line 351
    sget-object v0, Lorg/apache/asn1/ber/primitives/UniversalTag;->OCTET_STRING:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-virtual {v0}, Lorg/apache/asn1/ber/primitives/UniversalTag;->getPrimitiveTag()I

    move-result v7

    filled-new-array/range {v1 .. v7}, [I

    move-result-object v0

    .line 352
    new-instance v1, Lorg/apache/ldap/common/berlib/asn1/decoder/modify/ModifyRequestAttributeValueRule;

    invoke-direct {v1}, Lorg/apache/ldap/common/berlib/asn1/decoder/modify/ModifyRequestAttributeValueRule;-><init>()V

    invoke-virtual {p1, v0, v1}, Lorg/apache/asn1/ber/digester/BERDigester;->addRule([ILorg/apache/asn1/ber/digester/Rule;)V

    return-void
.end method

.method private addModifyResponseRules(Lorg/apache/asn1/ber/digester/BERDigester;)V
    .locals 4

    .line 514
    sget-object v0, Lorg/apache/asn1/ber/primitives/UniversalTag;->SEQUENCE_SEQUENCE_OF:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-virtual {v0}, Lorg/apache/asn1/ber/primitives/UniversalTag;->getPrimitiveTag()I

    move-result v0

    .line 515
    sget-object v1, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->MODIFY_RESPONSE:Lorg/apache/ldap/common/berlib/asn1/LdapTag;

    invoke-virtual {v1}, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->getPrimitiveTag()I

    move-result v1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    .line 516
    new-instance v1, Lorg/apache/ldap/common/berlib/asn1/decoder/modify/ModifyResponseRule;

    invoke-direct {v1}, Lorg/apache/ldap/common/berlib/asn1/decoder/modify/ModifyResponseRule;-><init>()V

    invoke-virtual {p1, v0, v1}, Lorg/apache/asn1/ber/digester/BERDigester;->addRule([ILorg/apache/asn1/ber/digester/Rule;)V

    const/4 v0, 0x3

    .line 519
    new-array v0, v0, [I

    .line 520
    sget-object v1, Lorg/apache/asn1/ber/primitives/UniversalTag;->SEQUENCE_SEQUENCE_OF:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-virtual {v1}, Lorg/apache/asn1/ber/primitives/UniversalTag;->getPrimitiveTag()I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 521
    sget-object v1, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->MODIFY_RESPONSE:Lorg/apache/ldap/common/berlib/asn1/LdapTag;

    invoke-virtual {v1}, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->getPrimitiveTag()I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 524
    sget-object v1, Lorg/apache/asn1/ber/primitives/UniversalTag;->ENUMERATED:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-virtual {v1}, Lorg/apache/asn1/ber/primitives/UniversalTag;->getPrimitiveTag()I

    move-result v1

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 525
    new-instance v1, Lorg/apache/ldap/common/berlib/asn1/decoder/ResultCodeRule;

    invoke-direct {v1}, Lorg/apache/ldap/common/berlib/asn1/decoder/ResultCodeRule;-><init>()V

    invoke-virtual {p1, v0, v1}, Lorg/apache/asn1/ber/digester/BERDigester;->addRule([ILorg/apache/asn1/ber/digester/Rule;)V

    .line 528
    sget-object v1, Lorg/apache/asn1/ber/primitives/UniversalTag;->OCTET_STRING:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-virtual {v1}, Lorg/apache/asn1/ber/primitives/UniversalTag;->getPrimitiveTag()I

    move-result v1

    aput v1, v0, v2

    .line 529
    new-instance v1, Lorg/apache/ldap/common/berlib/asn1/decoder/ResultMatchedDNRule;

    invoke-direct {v1}, Lorg/apache/ldap/common/berlib/asn1/decoder/ResultMatchedDNRule;-><init>()V

    invoke-virtual {p1, v0, v1}, Lorg/apache/asn1/ber/digester/BERDigester;->addRule([ILorg/apache/asn1/ber/digester/Rule;)V

    .line 530
    new-instance v1, Lorg/apache/ldap/common/berlib/asn1/decoder/ErrorMessageRule;

    invoke-direct {v1}, Lorg/apache/ldap/common/berlib/asn1/decoder/ErrorMessageRule;-><init>()V

    invoke-virtual {p1, v0, v1}, Lorg/apache/asn1/ber/digester/BERDigester;->addRule([ILorg/apache/asn1/ber/digester/Rule;)V

    .line 533
    sget-object v1, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->REFERRAL_TAG:Lorg/apache/asn1/ber/primitives/ContextSpecificTag;

    invoke-virtual {v1}, Lorg/apache/asn1/ber/primitives/ContextSpecificTag;->getPrimitiveTag()I

    move-result v1

    aput v1, v0, v2

    .line 534
    new-instance v1, Lorg/apache/ldap/common/berlib/asn1/decoder/ReferralRule;

    invoke-direct {v1}, Lorg/apache/ldap/common/berlib/asn1/decoder/ReferralRule;-><init>()V

    invoke-virtual {p1, v0, v1}, Lorg/apache/asn1/ber/digester/BERDigester;->addRule([ILorg/apache/asn1/ber/digester/Rule;)V

    .line 538
    sget-object v0, Lorg/apache/asn1/ber/primitives/UniversalTag;->SEQUENCE_SEQUENCE_OF:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-virtual {v0}, Lorg/apache/asn1/ber/primitives/UniversalTag;->getPrimitiveTag()I

    move-result v0

    .line 539
    sget-object v1, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->MODIFY_RESPONSE:Lorg/apache/ldap/common/berlib/asn1/LdapTag;

    invoke-virtual {v1}, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->getPrimitiveTag()I

    move-result v1

    .line 540
    sget-object v2, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->REFERRAL_TAG:Lorg/apache/asn1/ber/primitives/ContextSpecificTag;

    invoke-virtual {v2}, Lorg/apache/asn1/ber/primitives/ContextSpecificTag;->getPrimitiveTag()I

    move-result v2

    .line 541
    sget-object v3, Lorg/apache/asn1/ber/primitives/UniversalTag;->OCTET_STRING:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-virtual {v3}, Lorg/apache/asn1/ber/primitives/UniversalTag;->getPrimitiveTag()I

    move-result v3

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    .line 542
    new-instance v1, Lorg/apache/ldap/common/berlib/asn1/decoder/ReferralUrlRule;

    invoke-direct {v1}, Lorg/apache/ldap/common/berlib/asn1/decoder/ReferralUrlRule;-><init>()V

    invoke-virtual {p1, v0, v1}, Lorg/apache/asn1/ber/digester/BERDigester;->addRule([ILorg/apache/asn1/ber/digester/Rule;)V

    return-void
.end method

.method private addSearchRequestRules(Lorg/apache/asn1/ber/digester/BERDigester;)V
    .locals 8

    .line 183
    sget-object v0, Lorg/apache/asn1/ber/primitives/UniversalTag;->SEQUENCE_SEQUENCE_OF:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-virtual {v0}, Lorg/apache/asn1/ber/primitives/UniversalTag;->getPrimitiveTag()I

    move-result v0

    .line 184
    sget-object v1, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->SEARCH_REQUEST:Lorg/apache/ldap/common/berlib/asn1/LdapTag;

    invoke-virtual {v1}, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->getPrimitiveTag()I

    move-result v1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    .line 185
    new-instance v1, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestRule;

    invoke-direct {v1}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestRule;-><init>()V

    invoke-virtual {p1, v0, v1}, Lorg/apache/asn1/ber/digester/BERDigester;->addRule([ILorg/apache/asn1/ber/digester/Rule;)V

    const/4 v0, 0x3

    .line 188
    new-array v1, v0, [I

    .line 189
    sget-object v2, Lorg/apache/asn1/ber/primitives/UniversalTag;->SEQUENCE_SEQUENCE_OF:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-virtual {v2}, Lorg/apache/asn1/ber/primitives/UniversalTag;->getPrimitiveTag()I

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 190
    sget-object v2, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->SEARCH_REQUEST:Lorg/apache/ldap/common/berlib/asn1/LdapTag;

    invoke-virtual {v2}, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->getPrimitiveTag()I

    move-result v2

    const/4 v4, 0x1

    aput v2, v1, v4

    .line 191
    sget-object v2, Lorg/apache/asn1/ber/primitives/UniversalTag;->OCTET_STRING:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-virtual {v2}, Lorg/apache/asn1/ber/primitives/UniversalTag;->getPrimitiveTag()I

    move-result v2

    const/4 v5, 0x2

    aput v2, v1, v5

    .line 192
    new-instance v2, Lorg/apache/ldap/common/berlib/asn1/decoder/search/BaseObjectRule;

    invoke-direct {v2}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/BaseObjectRule;-><init>()V

    invoke-virtual {p1, v1, v2}, Lorg/apache/asn1/ber/digester/BERDigester;->addRule([ILorg/apache/asn1/ber/digester/Rule;)V

    .line 194
    sget-object v2, Lorg/apache/asn1/ber/primitives/UniversalTag;->ENUMERATED:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-virtual {v2}, Lorg/apache/asn1/ber/primitives/UniversalTag;->getPrimitiveTag()I

    move-result v2

    aput v2, v1, v5

    .line 195
    new-instance v2, Lorg/apache/ldap/common/berlib/asn1/decoder/search/ScopeRule;

    invoke-direct {v2}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/ScopeRule;-><init>()V

    invoke-virtual {p1, v1, v2}, Lorg/apache/asn1/ber/digester/BERDigester;->addRule([ILorg/apache/asn1/ber/digester/Rule;)V

    .line 196
    new-instance v2, Lorg/apache/ldap/common/berlib/asn1/decoder/search/DerefAliasRule;

    invoke-direct {v2}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/DerefAliasRule;-><init>()V

    invoke-virtual {p1, v1, v2}, Lorg/apache/asn1/ber/digester/BERDigester;->addRule([ILorg/apache/asn1/ber/digester/Rule;)V

    .line 198
    sget-object v2, Lorg/apache/asn1/ber/primitives/UniversalTag;->INTEGER:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-virtual {v2}, Lorg/apache/asn1/ber/primitives/UniversalTag;->getPrimitiveTag()I

    move-result v2

    aput v2, v1, v5

    .line 199
    new-instance v2, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SizeLimitRule;

    invoke-direct {v2}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SizeLimitRule;-><init>()V

    invoke-virtual {p1, v1, v2}, Lorg/apache/asn1/ber/digester/BERDigester;->addRule([ILorg/apache/asn1/ber/digester/Rule;)V

    .line 200
    new-instance v2, Lorg/apache/ldap/common/berlib/asn1/decoder/search/TimeLimitRule;

    invoke-direct {v2}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/TimeLimitRule;-><init>()V

    invoke-virtual {p1, v1, v2}, Lorg/apache/asn1/ber/digester/BERDigester;->addRule([ILorg/apache/asn1/ber/digester/Rule;)V

    .line 202
    sget-object v2, Lorg/apache/asn1/ber/primitives/UniversalTag;->BOOLEAN:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-virtual {v2}, Lorg/apache/asn1/ber/primitives/UniversalTag;->getPrimitiveTag()I

    move-result v2

    aput v2, v1, v5

    .line 203
    new-instance v2, Lorg/apache/ldap/common/berlib/asn1/decoder/search/TypesOnlyRule;

    invoke-direct {v2}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/TypesOnlyRule;-><init>()V

    invoke-virtual {p1, v1, v2}, Lorg/apache/asn1/ber/digester/BERDigester;->addRule([ILorg/apache/asn1/ber/digester/Rule;)V

    .line 205
    sget-object v2, Lorg/apache/asn1/ber/primitives/UniversalTag;->SEQUENCE_SEQUENCE_OF:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-virtual {v2}, Lorg/apache/asn1/ber/primitives/UniversalTag;->getPrimitiveTag()I

    move-result v2

    aput v2, v1, v5

    .line 206
    new-instance v2, Lorg/apache/ldap/common/berlib/asn1/decoder/search/TerminateFilterStateRule;

    invoke-direct {v2}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/TerminateFilterStateRule;-><init>()V

    invoke-virtual {p1, v1, v2}, Lorg/apache/asn1/ber/digester/BERDigester;->addRule([ILorg/apache/asn1/ber/digester/Rule;)V

    .line 207
    new-instance v2, Lorg/apache/ldap/common/berlib/asn1/decoder/search/RequestedAttributesStateChangeRule;

    invoke-direct {v2}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/RequestedAttributesStateChangeRule;-><init>()V

    invoke-virtual {p1, v1, v2}, Lorg/apache/asn1/ber/digester/BERDigester;->addRule([ILorg/apache/asn1/ber/digester/Rule;)V

    .line 210
    sget-object v1, Lorg/apache/asn1/ber/primitives/UniversalTag;->SEQUENCE_SEQUENCE_OF:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-virtual {v1}, Lorg/apache/asn1/ber/primitives/UniversalTag;->getPrimitiveTag()I

    move-result v1

    .line 211
    sget-object v2, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->SEARCH_REQUEST:Lorg/apache/ldap/common/berlib/asn1/LdapTag;

    invoke-virtual {v2}, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->getPrimitiveTag()I

    move-result v2

    .line 212
    sget-object v6, Lorg/apache/asn1/ber/primitives/UniversalTag;->SEQUENCE_SEQUENCE_OF:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-virtual {v6}, Lorg/apache/asn1/ber/primitives/UniversalTag;->getPrimitiveTag()I

    move-result v6

    .line 213
    sget-object v7, Lorg/apache/asn1/ber/primitives/UniversalTag;->OCTET_STRING:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-virtual {v7}, Lorg/apache/asn1/ber/primitives/UniversalTag;->getPrimitiveTag()I

    move-result v7

    filled-new-array {v1, v2, v6, v7}, [I

    move-result-object v1

    .line 214
    new-instance v2, Lorg/apache/ldap/common/berlib/asn1/decoder/search/RequestedAttributesRule;

    invoke-direct {v2}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/RequestedAttributesRule;-><init>()V

    invoke-virtual {p1, v1, v2}, Lorg/apache/asn1/ber/digester/BERDigester;->addRule([ILorg/apache/asn1/ber/digester/Rule;)V

    .line 218
    sget-object v1, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->CONTEXT_SPECIFIC_TAG_7:Lorg/apache/asn1/ber/primitives/ContextSpecificTag;

    invoke-virtual {v1}, Lorg/apache/asn1/ber/primitives/ContextSpecificTag;->getPrimitiveTag()I

    move-result v1

    const v2, 0x1fffffff

    filled-new-array {v2, v1}, [I

    move-result-object v1

    .line 219
    new-instance v6, Lorg/apache/ldap/common/berlib/asn1/decoder/search/PresentRule;

    invoke-direct {v6}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/PresentRule;-><init>()V

    invoke-virtual {p1, v1, v6}, Lorg/apache/asn1/ber/digester/BERDigester;->addRule([ILorg/apache/asn1/ber/digester/Rule;)V

    .line 221
    new-array v1, v0, [I

    .line 222
    aput v2, v1, v3

    .line 223
    sget-object v6, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->CONTEXT_SPECIFIC_TAG_3:Lorg/apache/asn1/ber/primitives/ContextSpecificTag;

    invoke-virtual {v6}, Lorg/apache/asn1/ber/primitives/ContextSpecificTag;->getPrimitiveTag()I

    move-result v6

    aput v6, v1, v4

    .line 224
    sget-object v6, Lorg/apache/asn1/ber/primitives/UniversalTag;->OCTET_STRING:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-virtual {v6}, Lorg/apache/asn1/ber/primitives/UniversalTag;->getPrimitiveTag()I

    move-result v6

    aput v6, v1, v5

    .line 225
    new-instance v6, Lorg/apache/ldap/common/berlib/asn1/decoder/search/EqualityMatchRule;

    invoke-direct {v6}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/EqualityMatchRule;-><init>()V

    invoke-virtual {p1, v1, v6}, Lorg/apache/asn1/ber/digester/BERDigester;->addRule([ILorg/apache/asn1/ber/digester/Rule;)V

    .line 231
    sget-object v6, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->CONTEXT_SPECIFIC_TAG_4:Lorg/apache/asn1/ber/primitives/ContextSpecificTag;

    invoke-virtual {v6}, Lorg/apache/asn1/ber/primitives/ContextSpecificTag;->getPrimitiveTag()I

    move-result v6

    aput v6, v1, v4

    .line 232
    new-instance v6, Lorg/apache/asn1/ber/digester/rules/Octets2StringRule;

    invoke-direct {v6}, Lorg/apache/asn1/ber/digester/rules/Octets2StringRule;-><init>()V

    invoke-virtual {p1, v1, v6}, Lorg/apache/asn1/ber/digester/BERDigester;->addRule([ILorg/apache/asn1/ber/digester/Rule;)V

    .line 233
    sget-object v6, Lorg/apache/asn1/ber/primitives/UniversalTag;->SEQUENCE_SEQUENCE_OF:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-virtual {v6}, Lorg/apache/asn1/ber/primitives/UniversalTag;->getPrimitiveTag()I

    move-result v6

    aput v6, v1, v5

    .line 234
    new-instance v6, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SubstringMatchRule;

    invoke-direct {v6}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SubstringMatchRule;-><init>()V

    invoke-virtual {p1, v1, v6}, Lorg/apache/asn1/ber/digester/BERDigester;->addRule([ILorg/apache/asn1/ber/digester/Rule;)V

    const/4 v1, 0x4

    .line 236
    new-array v1, v1, [I

    .line 237
    aput v2, v1, v3

    .line 238
    sget-object v6, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->CONTEXT_SPECIFIC_TAG_4:Lorg/apache/asn1/ber/primitives/ContextSpecificTag;

    invoke-virtual {v6}, Lorg/apache/asn1/ber/primitives/ContextSpecificTag;->getPrimitiveTag()I

    move-result v6

    aput v6, v1, v4

    .line 239
    sget-object v6, Lorg/apache/asn1/ber/primitives/UniversalTag;->SEQUENCE_SEQUENCE_OF:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-virtual {v6}, Lorg/apache/asn1/ber/primitives/UniversalTag;->getPrimitiveTag()I

    move-result v6

    aput v6, v1, v5

    .line 240
    sget-object v6, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->CONTEXT_SPECIFIC_TAG_0:Lorg/apache/asn1/ber/primitives/ContextSpecificTag;

    invoke-virtual {v6}, Lorg/apache/asn1/ber/primitives/ContextSpecificTag;->getPrimitiveTag()I

    move-result v6

    aput v6, v1, v0

    .line 241
    new-instance v6, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SubstringMatchInitialRule;

    invoke-direct {v6}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SubstringMatchInitialRule;-><init>()V

    invoke-virtual {p1, v1, v6}, Lorg/apache/asn1/ber/digester/BERDigester;->addRule([ILorg/apache/asn1/ber/digester/Rule;)V

    .line 243
    sget-object v6, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->CONTEXT_SPECIFIC_TAG_1:Lorg/apache/asn1/ber/primitives/ContextSpecificTag;

    invoke-virtual {v6}, Lorg/apache/asn1/ber/primitives/ContextSpecificTag;->getPrimitiveTag()I

    move-result v6

    aput v6, v1, v0

    .line 244
    new-instance v6, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SubstringMatchAnyRule;

    invoke-direct {v6}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SubstringMatchAnyRule;-><init>()V

    invoke-virtual {p1, v1, v6}, Lorg/apache/asn1/ber/digester/BERDigester;->addRule([ILorg/apache/asn1/ber/digester/Rule;)V

    .line 246
    sget-object v6, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->CONTEXT_SPECIFIC_TAG_2:Lorg/apache/asn1/ber/primitives/ContextSpecificTag;

    invoke-virtual {v6}, Lorg/apache/asn1/ber/primitives/ContextSpecificTag;->getPrimitiveTag()I

    move-result v6

    aput v6, v1, v0

    .line 247
    new-instance v6, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SubstringMatchFinalRule;

    invoke-direct {v6}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SubstringMatchFinalRule;-><init>()V

    invoke-virtual {p1, v1, v6}, Lorg/apache/asn1/ber/digester/BERDigester;->addRule([ILorg/apache/asn1/ber/digester/Rule;)V

    .line 253
    new-array v1, v0, [I

    .line 254
    aput v2, v1, v3

    .line 255
    sget-object v6, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->CONTEXT_SPECIFIC_TAG_5:Lorg/apache/asn1/ber/primitives/ContextSpecificTag;

    invoke-virtual {v6}, Lorg/apache/asn1/ber/primitives/ContextSpecificTag;->getPrimitiveTag()I

    move-result v6

    aput v6, v1, v4

    .line 256
    sget-object v6, Lorg/apache/asn1/ber/primitives/UniversalTag;->OCTET_STRING:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-virtual {v6}, Lorg/apache/asn1/ber/primitives/UniversalTag;->getPrimitiveTag()I

    move-result v6

    aput v6, v1, v5

    .line 257
    new-instance v6, Lorg/apache/ldap/common/berlib/asn1/decoder/search/GreaterOrEqualRule;

    invoke-direct {v6}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/GreaterOrEqualRule;-><init>()V

    invoke-virtual {p1, v1, v6}, Lorg/apache/asn1/ber/digester/BERDigester;->addRule([ILorg/apache/asn1/ber/digester/Rule;)V

    .line 259
    sget-object v6, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->CONTEXT_SPECIFIC_TAG_6:Lorg/apache/asn1/ber/primitives/ContextSpecificTag;

    invoke-virtual {v6}, Lorg/apache/asn1/ber/primitives/ContextSpecificTag;->getPrimitiveTag()I

    move-result v6

    aput v6, v1, v4

    .line 260
    new-instance v6, Lorg/apache/ldap/common/berlib/asn1/decoder/search/LessOrEqualRule;

    invoke-direct {v6}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/LessOrEqualRule;-><init>()V

    invoke-virtual {p1, v1, v6}, Lorg/apache/asn1/ber/digester/BERDigester;->addRule([ILorg/apache/asn1/ber/digester/Rule;)V

    .line 262
    sget-object v6, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->CONTEXT_SPECIFIC_TAG_8:Lorg/apache/asn1/ber/primitives/ContextSpecificTag;

    invoke-virtual {v6}, Lorg/apache/asn1/ber/primitives/ContextSpecificTag;->getPrimitiveTag()I

    move-result v6

    aput v6, v1, v4

    .line 263
    new-instance v6, Lorg/apache/ldap/common/berlib/asn1/decoder/search/ApproxMatchRule;

    invoke-direct {v6}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/ApproxMatchRule;-><init>()V

    invoke-virtual {p1, v1, v6}, Lorg/apache/asn1/ber/digester/BERDigester;->addRule([ILorg/apache/asn1/ber/digester/Rule;)V

    .line 270
    sget-object v1, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->CONTEXT_SPECIFIC_TAG_9:Lorg/apache/asn1/ber/primitives/ContextSpecificTag;

    invoke-virtual {v1}, Lorg/apache/asn1/ber/primitives/ContextSpecificTag;->getPrimitiveTag()I

    move-result v1

    filled-new-array {v2, v1}, [I

    move-result-object v1

    .line 271
    new-instance v6, Lorg/apache/ldap/common/berlib/asn1/decoder/search/ExtensibleMatchRule;

    invoke-direct {v6}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/ExtensibleMatchRule;-><init>()V

    invoke-virtual {p1, v1, v6}, Lorg/apache/asn1/ber/digester/BERDigester;->addRule([ILorg/apache/asn1/ber/digester/Rule;)V

    .line 273
    new-array v0, v0, [I

    .line 274
    aput v2, v0, v3

    .line 275
    sget-object v1, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->CONTEXT_SPECIFIC_TAG_9:Lorg/apache/asn1/ber/primitives/ContextSpecificTag;

    invoke-virtual {v1}, Lorg/apache/asn1/ber/primitives/ContextSpecificTag;->getPrimitiveTag()I

    move-result v1

    aput v1, v0, v4

    .line 276
    sget-object v1, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->CONTEXT_SPECIFIC_TAG_1:Lorg/apache/asn1/ber/primitives/ContextSpecificTag;

    invoke-virtual {v1}, Lorg/apache/asn1/ber/primitives/ContextSpecificTag;->getPrimitiveTag()I

    move-result v1

    aput v1, v0, v5

    .line 277
    new-instance v1, Lorg/apache/ldap/common/berlib/asn1/decoder/search/ExtensibleMatchMatchingRule;

    invoke-direct {v1}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/ExtensibleMatchMatchingRule;-><init>()V

    invoke-virtual {p1, v0, v1}, Lorg/apache/asn1/ber/digester/BERDigester;->addRule([ILorg/apache/asn1/ber/digester/Rule;)V

    .line 279
    sget-object v1, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->CONTEXT_SPECIFIC_TAG_2:Lorg/apache/asn1/ber/primitives/ContextSpecificTag;

    invoke-virtual {v1}, Lorg/apache/asn1/ber/primitives/ContextSpecificTag;->getPrimitiveTag()I

    move-result v1

    aput v1, v0, v5

    .line 280
    new-instance v1, Lorg/apache/ldap/common/berlib/asn1/decoder/search/ExtensibleMatchTypeRule;

    invoke-direct {v1}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/ExtensibleMatchTypeRule;-><init>()V

    invoke-virtual {p1, v0, v1}, Lorg/apache/asn1/ber/digester/BERDigester;->addRule([ILorg/apache/asn1/ber/digester/Rule;)V

    .line 282
    sget-object v1, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->CONTEXT_SPECIFIC_TAG_3:Lorg/apache/asn1/ber/primitives/ContextSpecificTag;

    invoke-virtual {v1}, Lorg/apache/asn1/ber/primitives/ContextSpecificTag;->getPrimitiveTag()I

    move-result v1

    aput v1, v0, v5

    .line 283
    new-instance v1, Lorg/apache/ldap/common/berlib/asn1/decoder/search/ExtensibleMatchValueRule;

    invoke-direct {v1}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/ExtensibleMatchValueRule;-><init>()V

    invoke-virtual {p1, v0, v1}, Lorg/apache/asn1/ber/digester/BERDigester;->addRule([ILorg/apache/asn1/ber/digester/Rule;)V

    .line 285
    sget-object v1, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->CONTEXT_SPECIFIC_TAG_4:Lorg/apache/asn1/ber/primitives/ContextSpecificTag;

    invoke-virtual {v1}, Lorg/apache/asn1/ber/primitives/ContextSpecificTag;->getPrimitiveTag()I

    move-result v1

    aput v1, v0, v5

    .line 286
    new-instance v1, Lorg/apache/ldap/common/berlib/asn1/decoder/search/ExtensibleMatchDnAttributesRule;

    invoke-direct {v1}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/ExtensibleMatchDnAttributesRule;-><init>()V

    invoke-virtual {p1, v0, v1}, Lorg/apache/asn1/ber/digester/BERDigester;->addRule([ILorg/apache/asn1/ber/digester/Rule;)V

    .line 296
    new-array v0, v5, [I

    .line 297
    aput v2, v0, v3

    .line 298
    sget-object v1, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->CONTEXT_SPECIFIC_TAG_0:Lorg/apache/asn1/ber/primitives/ContextSpecificTag;

    invoke-virtual {v1}, Lorg/apache/asn1/ber/primitives/ContextSpecificTag;->getPrimitiveTag()I

    move-result v1

    aput v1, v0, v4

    .line 299
    new-instance v1, Lorg/apache/ldap/common/berlib/asn1/decoder/search/AndRule;

    invoke-direct {v1}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/AndRule;-><init>()V

    invoke-virtual {p1, v0, v1}, Lorg/apache/asn1/ber/digester/BERDigester;->addRule([ILorg/apache/asn1/ber/digester/Rule;)V

    .line 300
    sget-object v1, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->CONTEXT_SPECIFIC_TAG_1:Lorg/apache/asn1/ber/primitives/ContextSpecificTag;

    invoke-virtual {v1}, Lorg/apache/asn1/ber/primitives/ContextSpecificTag;->getPrimitiveTag()I

    move-result v1

    aput v1, v0, v4

    .line 301
    new-instance v1, Lorg/apache/ldap/common/berlib/asn1/decoder/search/OrRule;

    invoke-direct {v1}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/OrRule;-><init>()V

    invoke-virtual {p1, v0, v1}, Lorg/apache/asn1/ber/digester/BERDigester;->addRule([ILorg/apache/asn1/ber/digester/Rule;)V

    .line 302
    sget-object v1, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->CONTEXT_SPECIFIC_TAG_2:Lorg/apache/asn1/ber/primitives/ContextSpecificTag;

    invoke-virtual {v1}, Lorg/apache/asn1/ber/primitives/ContextSpecificTag;->getPrimitiveTag()I

    move-result v1

    aput v1, v0, v4

    .line 303
    new-instance v1, Lorg/apache/ldap/common/berlib/asn1/decoder/search/NotRule;

    invoke-direct {v1}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/NotRule;-><init>()V

    invoke-virtual {p1, v0, v1}, Lorg/apache/asn1/ber/digester/BERDigester;->addRule([ILorg/apache/asn1/ber/digester/Rule;)V

    return-void
.end method

.method private addSearchResponseDoneRules(Lorg/apache/asn1/ber/digester/BERDigester;)V
    .locals 4

    .line 477
    sget-object v0, Lorg/apache/asn1/ber/primitives/UniversalTag;->SEQUENCE_SEQUENCE_OF:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-virtual {v0}, Lorg/apache/asn1/ber/primitives/UniversalTag;->getPrimitiveTag()I

    move-result v0

    .line 478
    sget-object v1, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->SEARCH_RESULT_DONE:Lorg/apache/ldap/common/berlib/asn1/LdapTag;

    invoke-virtual {v1}, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->getPrimitiveTag()I

    move-result v1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    .line 479
    new-instance v1, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchResponseDoneRule;

    invoke-direct {v1}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchResponseDoneRule;-><init>()V

    invoke-virtual {p1, v0, v1}, Lorg/apache/asn1/ber/digester/BERDigester;->addRule([ILorg/apache/asn1/ber/digester/Rule;)V

    const/4 v0, 0x3

    .line 482
    new-array v0, v0, [I

    .line 483
    sget-object v1, Lorg/apache/asn1/ber/primitives/UniversalTag;->SEQUENCE_SEQUENCE_OF:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-virtual {v1}, Lorg/apache/asn1/ber/primitives/UniversalTag;->getPrimitiveTag()I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 484
    sget-object v1, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->SEARCH_RESULT_DONE:Lorg/apache/ldap/common/berlib/asn1/LdapTag;

    invoke-virtual {v1}, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->getPrimitiveTag()I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 487
    sget-object v1, Lorg/apache/asn1/ber/primitives/UniversalTag;->ENUMERATED:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-virtual {v1}, Lorg/apache/asn1/ber/primitives/UniversalTag;->getPrimitiveTag()I

    move-result v1

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 488
    new-instance v1, Lorg/apache/ldap/common/berlib/asn1/decoder/ResultCodeRule;

    invoke-direct {v1}, Lorg/apache/ldap/common/berlib/asn1/decoder/ResultCodeRule;-><init>()V

    invoke-virtual {p1, v0, v1}, Lorg/apache/asn1/ber/digester/BERDigester;->addRule([ILorg/apache/asn1/ber/digester/Rule;)V

    .line 491
    sget-object v1, Lorg/apache/asn1/ber/primitives/UniversalTag;->OCTET_STRING:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-virtual {v1}, Lorg/apache/asn1/ber/primitives/UniversalTag;->getPrimitiveTag()I

    move-result v1

    aput v1, v0, v2

    .line 492
    new-instance v1, Lorg/apache/ldap/common/berlib/asn1/decoder/ResultMatchedDNRule;

    invoke-direct {v1}, Lorg/apache/ldap/common/berlib/asn1/decoder/ResultMatchedDNRule;-><init>()V

    invoke-virtual {p1, v0, v1}, Lorg/apache/asn1/ber/digester/BERDigester;->addRule([ILorg/apache/asn1/ber/digester/Rule;)V

    .line 493
    new-instance v1, Lorg/apache/ldap/common/berlib/asn1/decoder/ErrorMessageRule;

    invoke-direct {v1}, Lorg/apache/ldap/common/berlib/asn1/decoder/ErrorMessageRule;-><init>()V

    invoke-virtual {p1, v0, v1}, Lorg/apache/asn1/ber/digester/BERDigester;->addRule([ILorg/apache/asn1/ber/digester/Rule;)V

    .line 496
    sget-object v1, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->REFERRAL_TAG:Lorg/apache/asn1/ber/primitives/ContextSpecificTag;

    invoke-virtual {v1}, Lorg/apache/asn1/ber/primitives/ContextSpecificTag;->getPrimitiveTag()I

    move-result v1

    aput v1, v0, v2

    .line 497
    new-instance v1, Lorg/apache/ldap/common/berlib/asn1/decoder/ReferralRule;

    invoke-direct {v1}, Lorg/apache/ldap/common/berlib/asn1/decoder/ReferralRule;-><init>()V

    invoke-virtual {p1, v0, v1}, Lorg/apache/asn1/ber/digester/BERDigester;->addRule([ILorg/apache/asn1/ber/digester/Rule;)V

    .line 501
    sget-object v0, Lorg/apache/asn1/ber/primitives/UniversalTag;->SEQUENCE_SEQUENCE_OF:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-virtual {v0}, Lorg/apache/asn1/ber/primitives/UniversalTag;->getPrimitiveTag()I

    move-result v0

    .line 502
    sget-object v1, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->SEARCH_RESULT_DONE:Lorg/apache/ldap/common/berlib/asn1/LdapTag;

    invoke-virtual {v1}, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->getPrimitiveTag()I

    move-result v1

    .line 503
    sget-object v2, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->REFERRAL_TAG:Lorg/apache/asn1/ber/primitives/ContextSpecificTag;

    invoke-virtual {v2}, Lorg/apache/asn1/ber/primitives/ContextSpecificTag;->getPrimitiveTag()I

    move-result v2

    .line 504
    sget-object v3, Lorg/apache/asn1/ber/primitives/UniversalTag;->OCTET_STRING:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-virtual {v3}, Lorg/apache/asn1/ber/primitives/UniversalTag;->getPrimitiveTag()I

    move-result v3

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    .line 505
    new-instance v1, Lorg/apache/ldap/common/berlib/asn1/decoder/ReferralUrlRule;

    invoke-direct {v1}, Lorg/apache/ldap/common/berlib/asn1/decoder/ReferralUrlRule;-><init>()V

    invoke-virtual {p1, v0, v1}, Lorg/apache/asn1/ber/digester/BERDigester;->addRule([ILorg/apache/asn1/ber/digester/Rule;)V

    return-void
.end method

.method private addSearchResponseEntryRules(Lorg/apache/asn1/ber/digester/BERDigester;)V
    .locals 7

    .line 361
    sget-object v0, Lorg/apache/asn1/ber/primitives/UniversalTag;->SEQUENCE_SEQUENCE_OF:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-virtual {v0}, Lorg/apache/asn1/ber/primitives/UniversalTag;->getPrimitiveTag()I

    move-result v0

    .line 362
    sget-object v1, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->SEARCH_RESULT_ENTRY:Lorg/apache/ldap/common/berlib/asn1/LdapTag;

    invoke-virtual {v1}, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->getPrimitiveTag()I

    move-result v1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    .line 363
    new-instance v1, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchResponseEntryRule;

    invoke-direct {v1}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchResponseEntryRule;-><init>()V

    invoke-virtual {p1, v0, v1}, Lorg/apache/asn1/ber/digester/BERDigester;->addRule([ILorg/apache/asn1/ber/digester/Rule;)V

    const/4 v0, 0x3

    .line 366
    new-array v0, v0, [I

    .line 367
    sget-object v1, Lorg/apache/asn1/ber/primitives/UniversalTag;->SEQUENCE_SEQUENCE_OF:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-virtual {v1}, Lorg/apache/asn1/ber/primitives/UniversalTag;->getPrimitiveTag()I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 368
    sget-object v1, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->SEARCH_RESULT_ENTRY:Lorg/apache/ldap/common/berlib/asn1/LdapTag;

    invoke-virtual {v1}, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->getPrimitiveTag()I

    move-result v1

    const/4 v3, 0x1

    aput v1, v0, v3

    .line 369
    sget-object v1, Lorg/apache/asn1/ber/primitives/UniversalTag;->OCTET_STRING:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-virtual {v1}, Lorg/apache/asn1/ber/primitives/UniversalTag;->getPrimitiveTag()I

    move-result v1

    const/4 v4, 0x2

    aput v1, v0, v4

    .line 370
    new-instance v1, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchResponseEntryDnRule;

    invoke-direct {v1}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchResponseEntryDnRule;-><init>()V

    invoke-virtual {p1, v0, v1}, Lorg/apache/asn1/ber/digester/BERDigester;->addRule([ILorg/apache/asn1/ber/digester/Rule;)V

    .line 372
    sget-object v1, Lorg/apache/asn1/ber/primitives/UniversalTag;->SEQUENCE_SEQUENCE_OF:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-virtual {v1}, Lorg/apache/asn1/ber/primitives/UniversalTag;->getPrimitiveTag()I

    move-result v1

    aput v1, v0, v2

    .line 373
    sget-object v1, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->SEARCH_RESULT_ENTRY:Lorg/apache/ldap/common/berlib/asn1/LdapTag;

    invoke-virtual {v1}, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->getPrimitiveTag()I

    move-result v1

    aput v1, v0, v3

    .line 374
    sget-object v1, Lorg/apache/asn1/ber/primitives/UniversalTag;->SEQUENCE_SEQUENCE_OF:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-virtual {v1}, Lorg/apache/asn1/ber/primitives/UniversalTag;->getPrimitiveTag()I

    move-result v1

    aput v1, v0, v4

    .line 375
    new-instance v1, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchResponseEntryAttributesRule;

    invoke-direct {v1}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchResponseEntryAttributesRule;-><init>()V

    invoke-virtual {p1, v0, v1}, Lorg/apache/asn1/ber/digester/BERDigester;->addRule([ILorg/apache/asn1/ber/digester/Rule;)V

    .line 378
    sget-object v0, Lorg/apache/asn1/ber/primitives/UniversalTag;->SEQUENCE_SEQUENCE_OF:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-virtual {v0}, Lorg/apache/asn1/ber/primitives/UniversalTag;->getPrimitiveTag()I

    move-result v0

    .line 379
    sget-object v1, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->SEARCH_RESULT_ENTRY:Lorg/apache/ldap/common/berlib/asn1/LdapTag;

    invoke-virtual {v1}, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->getPrimitiveTag()I

    move-result v1

    .line 380
    sget-object v2, Lorg/apache/asn1/ber/primitives/UniversalTag;->SEQUENCE_SEQUENCE_OF:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-virtual {v2}, Lorg/apache/asn1/ber/primitives/UniversalTag;->getPrimitiveTag()I

    move-result v2

    .line 381
    sget-object v3, Lorg/apache/asn1/ber/primitives/UniversalTag;->SEQUENCE_SEQUENCE_OF:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-virtual {v3}, Lorg/apache/asn1/ber/primitives/UniversalTag;->getPrimitiveTag()I

    move-result v3

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    .line 382
    new-instance v1, Lorg/apache/asn1/ber/digester/rules/PopOnFinish;

    invoke-direct {v1}, Lorg/apache/asn1/ber/digester/rules/PopOnFinish;-><init>()V

    invoke-virtual {p1, v0, v1}, Lorg/apache/asn1/ber/digester/BERDigester;->addRule([ILorg/apache/asn1/ber/digester/Rule;)V

    .line 385
    sget-object v0, Lorg/apache/asn1/ber/primitives/UniversalTag;->SEQUENCE_SEQUENCE_OF:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-virtual {v0}, Lorg/apache/asn1/ber/primitives/UniversalTag;->getPrimitiveTag()I

    move-result v0

    .line 386
    sget-object v1, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->SEARCH_RESULT_ENTRY:Lorg/apache/ldap/common/berlib/asn1/LdapTag;

    invoke-virtual {v1}, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->getPrimitiveTag()I

    move-result v1

    .line 387
    sget-object v2, Lorg/apache/asn1/ber/primitives/UniversalTag;->SEQUENCE_SEQUENCE_OF:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-virtual {v2}, Lorg/apache/asn1/ber/primitives/UniversalTag;->getPrimitiveTag()I

    move-result v2

    .line 388
    sget-object v3, Lorg/apache/asn1/ber/primitives/UniversalTag;->SEQUENCE_SEQUENCE_OF:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-virtual {v3}, Lorg/apache/asn1/ber/primitives/UniversalTag;->getPrimitiveTag()I

    move-result v3

    .line 389
    sget-object v4, Lorg/apache/asn1/ber/primitives/UniversalTag;->OCTET_STRING:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-virtual {v4}, Lorg/apache/asn1/ber/primitives/UniversalTag;->getPrimitiveTag()I

    move-result v4

    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    .line 390
    new-instance v1, Lorg/apache/asn1/ber/digester/rules/Octets2StringRule;

    invoke-direct {v1}, Lorg/apache/asn1/ber/digester/rules/Octets2StringRule;-><init>()V

    invoke-virtual {p1, v0, v1}, Lorg/apache/asn1/ber/digester/BERDigester;->addRule([ILorg/apache/asn1/ber/digester/Rule;)V

    .line 393
    sget-object v0, Lorg/apache/asn1/ber/primitives/UniversalTag;->SEQUENCE_SEQUENCE_OF:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-virtual {v0}, Lorg/apache/asn1/ber/primitives/UniversalTag;->getPrimitiveTag()I

    move-result v1

    .line 394
    sget-object v0, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->SEARCH_RESULT_ENTRY:Lorg/apache/ldap/common/berlib/asn1/LdapTag;

    invoke-virtual {v0}, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->getPrimitiveTag()I

    move-result v2

    .line 395
    sget-object v0, Lorg/apache/asn1/ber/primitives/UniversalTag;->SEQUENCE_SEQUENCE_OF:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-virtual {v0}, Lorg/apache/asn1/ber/primitives/UniversalTag;->getPrimitiveTag()I

    move-result v3

    .line 396
    sget-object v0, Lorg/apache/asn1/ber/primitives/UniversalTag;->SEQUENCE_SEQUENCE_OF:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-virtual {v0}, Lorg/apache/asn1/ber/primitives/UniversalTag;->getPrimitiveTag()I

    move-result v4

    .line 397
    sget-object v0, Lorg/apache/asn1/ber/primitives/UniversalTag;->SET_SET_OF:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-virtual {v0}, Lorg/apache/asn1/ber/primitives/UniversalTag;->getPrimitiveTag()I

    move-result v5

    .line 398
    sget-object v0, Lorg/apache/asn1/ber/primitives/UniversalTag;->OCTET_STRING:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-virtual {v0}, Lorg/apache/asn1/ber/primitives/UniversalTag;->getPrimitiveTag()I

    move-result v6

    filled-new-array/range {v1 .. v6}, [I

    move-result-object v0

    .line 399
    new-instance v1, Lorg/apache/ldap/common/berlib/asn1/decoder/add/AddAttributeValueRule;

    invoke-direct {v1}, Lorg/apache/ldap/common/berlib/asn1/decoder/add/AddAttributeValueRule;-><init>()V

    invoke-virtual {p1, v0, v1}, Lorg/apache/asn1/ber/digester/BERDigester;->addRule([ILorg/apache/asn1/ber/digester/Rule;)V

    return-void
.end method

.method private addSearchResponseReferenceRules(Lorg/apache/asn1/ber/digester/BERDigester;)V
    .locals 3

    .line 455
    sget-object v0, Lorg/apache/asn1/ber/primitives/UniversalTag;->SEQUENCE_SEQUENCE_OF:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-virtual {v0}, Lorg/apache/asn1/ber/primitives/UniversalTag;->getPrimitiveTag()I

    move-result v0

    .line 456
    sget-object v1, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->SEARCH_RESULT_REFERENCE:Lorg/apache/ldap/common/berlib/asn1/LdapTag;

    invoke-virtual {v1}, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->getPrimitiveTag()I

    move-result v1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    .line 457
    new-instance v1, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchResponseReferenceRule;

    invoke-direct {v1}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchResponseReferenceRule;-><init>()V

    invoke-virtual {p1, v0, v1}, Lorg/apache/asn1/ber/digester/BERDigester;->addRule([ILorg/apache/asn1/ber/digester/Rule;)V

    .line 458
    new-instance v1, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchResponseReferralRule;

    invoke-direct {v1}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchResponseReferralRule;-><init>()V

    invoke-virtual {p1, v0, v1}, Lorg/apache/asn1/ber/digester/BERDigester;->addRule([ILorg/apache/asn1/ber/digester/Rule;)V

    .line 465
    sget-object v0, Lorg/apache/asn1/ber/primitives/UniversalTag;->SEQUENCE_SEQUENCE_OF:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-virtual {v0}, Lorg/apache/asn1/ber/primitives/UniversalTag;->getPrimitiveTag()I

    move-result v0

    .line 466
    sget-object v1, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->SEARCH_RESULT_REFERENCE:Lorg/apache/ldap/common/berlib/asn1/LdapTag;

    invoke-virtual {v1}, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->getPrimitiveTag()I

    move-result v1

    .line 467
    sget-object v2, Lorg/apache/asn1/ber/primitives/UniversalTag;->OCTET_STRING:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-virtual {v2}, Lorg/apache/asn1/ber/primitives/UniversalTag;->getPrimitiveTag()I

    move-result v2

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    .line 468
    new-instance v1, Lorg/apache/ldap/common/berlib/asn1/decoder/ReferralUrlRule;

    invoke-direct {v1}, Lorg/apache/ldap/common/berlib/asn1/decoder/ReferralUrlRule;-><init>()V

    invoke-virtual {p1, v0, v1}, Lorg/apache/asn1/ber/digester/BERDigester;->addRule([ILorg/apache/asn1/ber/digester/Rule;)V

    return-void
.end method

.method private addUnbindRequestRules(Lorg/apache/asn1/ber/digester/BERDigester;)V
    .locals 2

    .line 948
    sget-object v0, Lorg/apache/asn1/ber/primitives/UniversalTag;->SEQUENCE_SEQUENCE_OF:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-virtual {v0}, Lorg/apache/asn1/ber/primitives/UniversalTag;->getValue()I

    move-result v0

    .line 949
    sget-object v1, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->UNBIND_REQUEST:Lorg/apache/ldap/common/berlib/asn1/LdapTag;

    invoke-virtual {v1}, Lorg/apache/ldap/common/berlib/asn1/LdapTag;->getValue()I

    move-result v1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    .line 950
    new-instance v1, Lorg/apache/ldap/common/berlib/asn1/decoder/unbind/UnbindRequestRule;

    invoke-direct {v1}, Lorg/apache/ldap/common/berlib/asn1/decoder/unbind/UnbindRequestRule;-><init>()V

    invoke-virtual {p1, v0, v1}, Lorg/apache/asn1/ber/digester/BERDigester;->addRule([ILorg/apache/asn1/ber/digester/Rule;)V

    return-void
.end method

.method public static getSingleton()Lorg/apache/ldap/common/berlib/asn1/decoder/LdapDigesterFactory;
    .locals 1

    .line 133
    sget-object v0, Lorg/apache/ldap/common/berlib/asn1/decoder/LdapDigesterFactory;->singleton:Lorg/apache/ldap/common/berlib/asn1/decoder/LdapDigesterFactory;

    if-nez v0, :cond_0

    .line 135
    new-instance v0, Lorg/apache/ldap/common/berlib/asn1/decoder/LdapDigesterFactory;

    invoke-direct {v0}, Lorg/apache/ldap/common/berlib/asn1/decoder/LdapDigesterFactory;-><init>()V

    sput-object v0, Lorg/apache/ldap/common/berlib/asn1/decoder/LdapDigesterFactory;->singleton:Lorg/apache/ldap/common/berlib/asn1/decoder/LdapDigesterFactory;

    .line 138
    :cond_0
    sget-object v0, Lorg/apache/ldap/common/berlib/asn1/decoder/LdapDigesterFactory;->singleton:Lorg/apache/ldap/common/berlib/asn1/decoder/LdapDigesterFactory;

    return-object v0
.end method


# virtual methods
.method public create()Lorg/apache/asn1/ber/digester/BERDigester;
    .locals 1

    .line 150
    new-instance v0, Lorg/apache/asn1/ber/digester/BERDigester;

    invoke-direct {v0}, Lorg/apache/asn1/ber/digester/BERDigester;-><init>()V

    .line 152
    invoke-direct {p0, v0}, Lorg/apache/ldap/common/berlib/asn1/decoder/LdapDigesterFactory;->addMessageIdRules(Lorg/apache/asn1/ber/digester/BERDigester;)V

    .line 153
    invoke-direct {p0, v0}, Lorg/apache/ldap/common/berlib/asn1/decoder/LdapDigesterFactory;->addAbandonRequestRules(Lorg/apache/asn1/ber/digester/BERDigester;)V

    .line 154
    invoke-direct {p0, v0}, Lorg/apache/ldap/common/berlib/asn1/decoder/LdapDigesterFactory;->addAddResponseRules(Lorg/apache/asn1/ber/digester/BERDigester;)V

    .line 155
    invoke-direct {p0, v0}, Lorg/apache/ldap/common/berlib/asn1/decoder/LdapDigesterFactory;->addAddRequestRules(Lorg/apache/asn1/ber/digester/BERDigester;)V

    .line 156
    invoke-direct {p0, v0}, Lorg/apache/ldap/common/berlib/asn1/decoder/LdapDigesterFactory;->addUnbindRequestRules(Lorg/apache/asn1/ber/digester/BERDigester;)V

    .line 157
    invoke-direct {p0, v0}, Lorg/apache/ldap/common/berlib/asn1/decoder/LdapDigesterFactory;->addBindRequestRules(Lorg/apache/asn1/ber/digester/BERDigester;)V

    .line 158
    invoke-direct {p0, v0}, Lorg/apache/ldap/common/berlib/asn1/decoder/LdapDigesterFactory;->addBindResponseRules(Lorg/apache/asn1/ber/digester/BERDigester;)V

    .line 159
    invoke-direct {p0, v0}, Lorg/apache/ldap/common/berlib/asn1/decoder/LdapDigesterFactory;->addCompareRequestRules(Lorg/apache/asn1/ber/digester/BERDigester;)V

    .line 160
    invoke-direct {p0, v0}, Lorg/apache/ldap/common/berlib/asn1/decoder/LdapDigesterFactory;->addCompareResponseRules(Lorg/apache/asn1/ber/digester/BERDigester;)V

    .line 161
    invoke-direct {p0, v0}, Lorg/apache/ldap/common/berlib/asn1/decoder/LdapDigesterFactory;->addDeleteRequestRules(Lorg/apache/asn1/ber/digester/BERDigester;)V

    .line 162
    invoke-direct {p0, v0}, Lorg/apache/ldap/common/berlib/asn1/decoder/LdapDigesterFactory;->addDeleteResponseRules(Lorg/apache/asn1/ber/digester/BERDigester;)V

    .line 163
    invoke-direct {p0, v0}, Lorg/apache/ldap/common/berlib/asn1/decoder/LdapDigesterFactory;->addExtendedRequestRules(Lorg/apache/asn1/ber/digester/BERDigester;)V

    .line 164
    invoke-direct {p0, v0}, Lorg/apache/ldap/common/berlib/asn1/decoder/LdapDigesterFactory;->addExtendedResponseRules(Lorg/apache/asn1/ber/digester/BERDigester;)V

    .line 165
    invoke-direct {p0, v0}, Lorg/apache/ldap/common/berlib/asn1/decoder/LdapDigesterFactory;->addModifyDnRequestRules(Lorg/apache/asn1/ber/digester/BERDigester;)V

    .line 166
    invoke-direct {p0, v0}, Lorg/apache/ldap/common/berlib/asn1/decoder/LdapDigesterFactory;->addModifyDnResponseRules(Lorg/apache/asn1/ber/digester/BERDigester;)V

    .line 167
    invoke-direct {p0, v0}, Lorg/apache/ldap/common/berlib/asn1/decoder/LdapDigesterFactory;->addModifyRequestRules(Lorg/apache/asn1/ber/digester/BERDigester;)V

    .line 168
    invoke-direct {p0, v0}, Lorg/apache/ldap/common/berlib/asn1/decoder/LdapDigesterFactory;->addModifyResponseRules(Lorg/apache/asn1/ber/digester/BERDigester;)V

    .line 169
    invoke-direct {p0, v0}, Lorg/apache/ldap/common/berlib/asn1/decoder/LdapDigesterFactory;->addSearchRequestRules(Lorg/apache/asn1/ber/digester/BERDigester;)V

    .line 170
    invoke-direct {p0, v0}, Lorg/apache/ldap/common/berlib/asn1/decoder/LdapDigesterFactory;->addSearchResponseDoneRules(Lorg/apache/asn1/ber/digester/BERDigester;)V

    .line 171
    invoke-direct {p0, v0}, Lorg/apache/ldap/common/berlib/asn1/decoder/LdapDigesterFactory;->addSearchResponseReferenceRules(Lorg/apache/asn1/ber/digester/BERDigester;)V

    .line 172
    invoke-direct {p0, v0}, Lorg/apache/ldap/common/berlib/asn1/decoder/LdapDigesterFactory;->addSearchResponseEntryRules(Lorg/apache/asn1/ber/digester/BERDigester;)V

    return-object v0
.end method
