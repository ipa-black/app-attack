.class public Lorg/apache/ldap/common/schema/SchemaUtils;
.super Ljava/lang/Object;
.source "SchemaUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static render(Ljava/lang/StringBuffer;[Ljava/lang/String;)Ljava/lang/StringBuffer;
    .locals 4

    if-eqz p1, :cond_3

    .line 44
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    .line 48
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "\'"

    if-ne v0, v2, :cond_1

    .line 50
    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    aget-object p1, p1, v1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 54
    :cond_1
    const-string v0, "( "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 55
    :goto_0
    array-length v0, p1

    if-ge v1, v0, :cond_2

    .line 57
    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "\' "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 59
    :cond_2
    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    :goto_1
    return-object p0
.end method

.method public static render(Ljava/lang/StringBuffer;[Lorg/apache/ldap/common/schema/AttributeType;)Ljava/lang/StringBuffer;
    .locals 3

    if-eqz p1, :cond_4

    .line 166
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_2

    .line 170
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 172
    aget-object p1, p1, v1

    invoke-interface {p1}, Lorg/apache/ldap/common/schema/AttributeType;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 176
    :cond_1
    const-string v0, "( "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 177
    :goto_0
    array-length v0, p1

    if-ge v1, v0, :cond_3

    add-int/lit8 v0, v1, 0x1

    .line 179
    array-length v2, p1

    if-ge v0, v2, :cond_2

    .line 181
    aget-object v1, p1, v1

    invoke-interface {v1}, Lorg/apache/ldap/common/schema/AttributeType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " $ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 185
    :cond_2
    aget-object v1, p1, v1

    invoke-interface {v1}, Lorg/apache/ldap/common/schema/AttributeType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    move v1, v0

    goto :goto_0

    .line 188
    :cond_3
    const-string p1, " )"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    :goto_2
    return-object p0
.end method

.method public static render(Ljava/lang/StringBuffer;[Lorg/apache/ldap/common/schema/ObjectClass;)Ljava/lang/StringBuffer;
    .locals 3

    if-eqz p1, :cond_4

    .line 108
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_2

    .line 112
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 114
    aget-object p1, p1, v1

    invoke-interface {p1}, Lorg/apache/ldap/common/schema/ObjectClass;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 118
    :cond_1
    const-string v0, "( "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 119
    :goto_0
    array-length v0, p1

    if-ge v1, v0, :cond_3

    add-int/lit8 v0, v1, 0x1

    .line 121
    array-length v2, p1

    if-ge v0, v2, :cond_2

    .line 123
    aget-object v1, p1, v1

    invoke-interface {v1}, Lorg/apache/ldap/common/schema/ObjectClass;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " $ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 127
    :cond_2
    aget-object v1, p1, v1

    invoke-interface {v1}, Lorg/apache/ldap/common/schema/ObjectClass;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    move v1, v0

    goto :goto_0

    .line 130
    :cond_3
    const-string p1, " )"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    :goto_2
    return-object p0
.end method

.method public static render(Lorg/apache/ldap/common/schema/AttributeType;)Ljava/lang/StringBuffer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 349
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 350
    const-string v1, "( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-interface {p0}, Lorg/apache/ldap/common/schema/AttributeType;->getOid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " NAME "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 351
    invoke-interface {p0}, Lorg/apache/ldap/common/schema/AttributeType;->getNames()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/ldap/common/schema/SchemaUtils;->render(Ljava/lang/StringBuffer;[Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 353
    invoke-interface {p0}, Lorg/apache/ldap/common/schema/AttributeType;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 355
    const-string v1, "DESC "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-interface {p0}, Lorg/apache/ldap/common/schema/AttributeType;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\' "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 358
    :cond_0
    invoke-interface {p0}, Lorg/apache/ldap/common/schema/AttributeType;->isObsolete()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 360
    const-string v1, " OBSOLETE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 363
    :cond_1
    invoke-interface {p0}, Lorg/apache/ldap/common/schema/AttributeType;->getSuperior()Lorg/apache/ldap/common/schema/AttributeType;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 365
    const-string v1, " SUP "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-interface {p0}, Lorg/apache/ldap/common/schema/AttributeType;->getSuperior()Lorg/apache/ldap/common/schema/AttributeType;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ldap/common/schema/AttributeType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 368
    :cond_2
    invoke-interface {p0}, Lorg/apache/ldap/common/schema/AttributeType;->getEquality()Lorg/apache/ldap/common/schema/MatchingRule;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 370
    const-string v1, " EQUALITY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-interface {p0}, Lorg/apache/ldap/common/schema/AttributeType;->getEquality()Lorg/apache/ldap/common/schema/MatchingRule;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ldap/common/schema/MatchingRule;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 373
    :cond_3
    invoke-interface {p0}, Lorg/apache/ldap/common/schema/AttributeType;->getOrdering()Lorg/apache/ldap/common/schema/MatchingRule;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 375
    const-string v1, " ORDERING "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-interface {p0}, Lorg/apache/ldap/common/schema/AttributeType;->getOrdering()Lorg/apache/ldap/common/schema/MatchingRule;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ldap/common/schema/MatchingRule;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 378
    :cond_4
    invoke-interface {p0}, Lorg/apache/ldap/common/schema/AttributeType;->getSubstr()Lorg/apache/ldap/common/schema/MatchingRule;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 380
    const-string v1, " SUBSTR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-interface {p0}, Lorg/apache/ldap/common/schema/AttributeType;->getSubstr()Lorg/apache/ldap/common/schema/MatchingRule;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ldap/common/schema/MatchingRule;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 383
    :cond_5
    invoke-interface {p0}, Lorg/apache/ldap/common/schema/AttributeType;->getSyntax()Lorg/apache/ldap/common/schema/Syntax;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 385
    const-string v1, " SYNTAX "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-interface {p0}, Lorg/apache/ldap/common/schema/AttributeType;->getSyntax()Lorg/apache/ldap/common/schema/Syntax;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ldap/common/schema/Syntax;->getOid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 387
    invoke-interface {p0}, Lorg/apache/ldap/common/schema/AttributeType;->getLength()I

    move-result v1

    if-lez v1, :cond_6

    .line 389
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-interface {p0}, Lorg/apache/ldap/common/schema/AttributeType;->getLength()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 393
    :cond_6
    invoke-interface {p0}, Lorg/apache/ldap/common/schema/AttributeType;->isSingleValue()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 395
    const-string v1, " SINGLE-VALUE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 398
    :cond_7
    invoke-interface {p0}, Lorg/apache/ldap/common/schema/AttributeType;->isCollective()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 400
    const-string v1, " COLLECTIVE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 403
    :cond_8
    invoke-interface {p0}, Lorg/apache/ldap/common/schema/AttributeType;->isCanUserModify()Z

    move-result v1

    if-nez v1, :cond_9

    .line 405
    const-string v1, " NO-USER-MODIFICATION"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 408
    :cond_9
    invoke-interface {p0}, Lorg/apache/ldap/common/schema/AttributeType;->getUsage()Lorg/apache/ldap/common/schema/UsageEnum;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 410
    const-string v1, " USAGE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-interface {p0}, Lorg/apache/ldap/common/schema/AttributeType;->getUsage()Lorg/apache/ldap/common/schema/UsageEnum;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/ldap/common/schema/UsageEnum;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 416
    :cond_a
    const-string p0, " )"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-object v0
.end method

.method public static render(Lorg/apache/ldap/common/schema/DITContentRule;)Ljava/lang/StringBuffer;
    .locals 3

    .line 565
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 566
    const-string v1, "( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-interface {p0}, Lorg/apache/ldap/common/schema/DITContentRule;->getOid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " NAME "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 567
    invoke-interface {p0}, Lorg/apache/ldap/common/schema/DITContentRule;->getNames()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/ldap/common/schema/SchemaUtils;->render(Ljava/lang/StringBuffer;[Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 569
    invoke-interface {p0}, Lorg/apache/ldap/common/schema/DITContentRule;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 571
    const-string v1, "DESC "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-interface {p0}, Lorg/apache/ldap/common/schema/DITContentRule;->getDescription()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p0

    const-string v1, "\' "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 577
    :cond_0
    const-string p0, " )"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-object v0
.end method

.method public static render(Lorg/apache/ldap/common/schema/DITStructureRule;)Ljava/lang/StringBuffer;
    .locals 3

    .line 588
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 589
    const-string v1, "( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-interface {p0}, Lorg/apache/ldap/common/schema/DITStructureRule;->getOid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " NAME "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 590
    invoke-interface {p0}, Lorg/apache/ldap/common/schema/DITStructureRule;->getNames()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/ldap/common/schema/SchemaUtils;->render(Ljava/lang/StringBuffer;[Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 592
    invoke-interface {p0}, Lorg/apache/ldap/common/schema/DITStructureRule;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 594
    const-string v1, "DESC "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-interface {p0}, Lorg/apache/ldap/common/schema/DITStructureRule;->getDescription()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p0

    const-string v1, "\' "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 600
    :cond_0
    const-string p0, " )"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-object v0
.end method

.method public static render(Lorg/apache/ldap/common/schema/MatchingRule;)Ljava/lang/StringBuffer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 467
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 468
    const-string v1, "( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-interface {p0}, Lorg/apache/ldap/common/schema/MatchingRule;->getOid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " NAME "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 469
    invoke-interface {p0}, Lorg/apache/ldap/common/schema/MatchingRule;->getNames()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/ldap/common/schema/SchemaUtils;->render(Ljava/lang/StringBuffer;[Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 471
    invoke-interface {p0}, Lorg/apache/ldap/common/schema/MatchingRule;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 473
    const-string v1, "DESC "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-interface {p0}, Lorg/apache/ldap/common/schema/MatchingRule;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\' "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 476
    :cond_0
    invoke-interface {p0}, Lorg/apache/ldap/common/schema/MatchingRule;->isObsolete()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 478
    const-string v1, " OBSOLETE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 481
    :cond_1
    invoke-interface {p0}, Lorg/apache/ldap/common/schema/MatchingRule;->getSyntax()Lorg/apache/ldap/common/schema/Syntax;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 483
    const-string v1, " SYNTAX "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-interface {p0}, Lorg/apache/ldap/common/schema/MatchingRule;->getSyntax()Lorg/apache/ldap/common/schema/Syntax;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/ldap/common/schema/Syntax;->getOid()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 489
    :cond_2
    const-string p0, " )"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-object v0
.end method

.method public static render(Lorg/apache/ldap/common/schema/MatchingRuleUse;)Ljava/lang/StringBuffer;
    .locals 3

    .line 542
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 543
    const-string v1, "( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-interface {p0}, Lorg/apache/ldap/common/schema/MatchingRuleUse;->getOid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " NAME "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 544
    invoke-interface {p0}, Lorg/apache/ldap/common/schema/MatchingRuleUse;->getNames()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/ldap/common/schema/SchemaUtils;->render(Ljava/lang/StringBuffer;[Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 546
    invoke-interface {p0}, Lorg/apache/ldap/common/schema/MatchingRuleUse;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 548
    const-string v1, "DESC "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-interface {p0}, Lorg/apache/ldap/common/schema/MatchingRuleUse;->getDescription()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p0

    const-string v1, "\' "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 554
    :cond_0
    const-string p0, " )"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-object v0
.end method

.method public static render(Lorg/apache/ldap/common/schema/NameForm;)Ljava/lang/StringBuffer;
    .locals 3

    .line 611
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 612
    const-string v1, "( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-interface {p0}, Lorg/apache/ldap/common/schema/NameForm;->getOid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " NAME "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 613
    invoke-interface {p0}, Lorg/apache/ldap/common/schema/NameForm;->getNames()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/ldap/common/schema/SchemaUtils;->render(Ljava/lang/StringBuffer;[Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 615
    invoke-interface {p0}, Lorg/apache/ldap/common/schema/NameForm;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 617
    const-string v1, "DESC "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-interface {p0}, Lorg/apache/ldap/common/schema/NameForm;->getDescription()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p0

    const-string v1, "\' "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 623
    :cond_0
    const-string p0, " )"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-object v0
.end method

.method public static render(Lorg/apache/ldap/common/schema/ObjectClass;)Ljava/lang/StringBuffer;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 244
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 245
    const-string v1, "( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-interface {p0}, Lorg/apache/ldap/common/schema/ObjectClass;->getOid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " NAME "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 246
    invoke-interface {p0}, Lorg/apache/ldap/common/schema/ObjectClass;->getNames()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/ldap/common/schema/SchemaUtils;->render(Ljava/lang/StringBuffer;[Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 248
    invoke-interface {p0}, Lorg/apache/ldap/common/schema/ObjectClass;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 250
    const-string v1, "DESC "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-interface {p0}, Lorg/apache/ldap/common/schema/ObjectClass;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, "\' "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 253
    :cond_0
    invoke-interface {p0}, Lorg/apache/ldap/common/schema/ObjectClass;->isObsolete()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 255
    const-string v1, " OBSOLETE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 258
    :cond_1
    invoke-interface {p0}, Lorg/apache/ldap/common/schema/ObjectClass;->getSuperClasses()[Lorg/apache/ldap/common/schema/ObjectClass;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Lorg/apache/ldap/common/schema/ObjectClass;->getSuperClasses()[Lorg/apache/ldap/common/schema/ObjectClass;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_2

    .line 260
    const-string v1, "SUP "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 261
    invoke-interface {p0}, Lorg/apache/ldap/common/schema/ObjectClass;->getSuperClasses()[Lorg/apache/ldap/common/schema/ObjectClass;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/ldap/common/schema/SchemaUtils;->render(Ljava/lang/StringBuffer;[Lorg/apache/ldap/common/schema/ObjectClass;)Ljava/lang/StringBuffer;

    .line 264
    :cond_2
    invoke-interface {p0}, Lorg/apache/ldap/common/schema/ObjectClass;->getType()Lorg/apache/ldap/common/schema/ObjectClassTypeEnum;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 266
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-interface {p0}, Lorg/apache/ldap/common/schema/ObjectClass;->getType()Lorg/apache/ldap/common/schema/ObjectClassTypeEnum;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ldap/common/schema/ObjectClassTypeEnum;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 269
    :cond_3
    invoke-interface {p0}, Lorg/apache/ldap/common/schema/ObjectClass;->getMustList()[Lorg/apache/ldap/common/schema/AttributeType;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 271
    const-string v1, " MUST "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 272
    invoke-interface {p0}, Lorg/apache/ldap/common/schema/ObjectClass;->getMustList()[Lorg/apache/ldap/common/schema/AttributeType;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/ldap/common/schema/SchemaUtils;->render(Ljava/lang/StringBuffer;[Lorg/apache/ldap/common/schema/AttributeType;)Ljava/lang/StringBuffer;

    .line 275
    :cond_4
    invoke-interface {p0}, Lorg/apache/ldap/common/schema/ObjectClass;->getMayList()[Lorg/apache/ldap/common/schema/AttributeType;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 277
    const-string v1, " MAY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 278
    invoke-interface {p0}, Lorg/apache/ldap/common/schema/ObjectClass;->getMayList()[Lorg/apache/ldap/common/schema/AttributeType;

    move-result-object p0

    invoke-static {v0, p0}, Lorg/apache/ldap/common/schema/SchemaUtils;->render(Ljava/lang/StringBuffer;[Lorg/apache/ldap/common/schema/AttributeType;)Ljava/lang/StringBuffer;

    .line 284
    :cond_5
    const-string p0, " )"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-object v0
.end method

.method public static render(Lorg/apache/ldap/common/schema/Syntax;)Ljava/lang/StringBuffer;
    .locals 3

    .line 519
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 520
    const-string v1, "( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-interface {p0}, Lorg/apache/ldap/common/schema/Syntax;->getOid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " NAME "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 521
    invoke-interface {p0}, Lorg/apache/ldap/common/schema/Syntax;->getNames()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/ldap/common/schema/SchemaUtils;->render(Ljava/lang/StringBuffer;[Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 523
    invoke-interface {p0}, Lorg/apache/ldap/common/schema/Syntax;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 525
    const-string v1, "DESC "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-interface {p0}, Lorg/apache/ldap/common/schema/Syntax;->getDescription()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p0

    const-string v1, "\' "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 531
    :cond_0
    const-string p0, " )"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-object v0
.end method

.method public static render([Ljava/lang/String;)Ljava/lang/StringBuffer;
    .locals 1

    .line 74
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 75
    invoke-static {v0, p0}, Lorg/apache/ldap/common/schema/SchemaUtils;->render(Ljava/lang/StringBuffer;[Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static render([Lorg/apache/ldap/common/schema/AttributeType;)Ljava/lang/StringBuffer;
    .locals 1

    .line 151
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 152
    invoke-static {v0, p0}, Lorg/apache/ldap/common/schema/SchemaUtils;->render(Ljava/lang/StringBuffer;[Lorg/apache/ldap/common/schema/AttributeType;)Ljava/lang/StringBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static render([Lorg/apache/ldap/common/schema/ObjectClass;)Ljava/lang/StringBuffer;
    .locals 1

    .line 93
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 94
    invoke-static {v0, p0}, Lorg/apache/ldap/common/schema/SchemaUtils;->render(Ljava/lang/StringBuffer;[Lorg/apache/ldap/common/schema/ObjectClass;)Ljava/lang/StringBuffer;

    move-result-object p0

    return-object p0
.end method
