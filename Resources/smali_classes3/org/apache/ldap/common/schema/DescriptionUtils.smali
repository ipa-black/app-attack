.class public Lorg/apache/ldap/common/schema/DescriptionUtils;
.super Ljava/lang/Object;
.source "DescriptionUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDescription(Lorg/apache/ldap/common/schema/AttributeType;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 72
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "( "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 73
    invoke-interface {p0}, Lorg/apache/ldap/common/schema/AttributeType;->getOid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 74
    const-string v1, "\nNAME "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 77
    invoke-interface {p0}, Lorg/apache/ldap/common/schema/AttributeType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0xa

    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 80
    invoke-interface {p0}, Lorg/apache/ldap/common/schema/AttributeType;->getDescription()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 82
    const-string v2, "DESC "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 83
    invoke-interface {p0}, Lorg/apache/ldap/common/schema/AttributeType;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 87
    :cond_0
    invoke-interface {p0}, Lorg/apache/ldap/common/schema/AttributeType;->isObsolete()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 89
    const-string v2, "OBSOLETE\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 93
    :cond_1
    invoke-interface {p0}, Lorg/apache/ldap/common/schema/AttributeType;->getSuperior()Lorg/apache/ldap/common/schema/AttributeType;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ldap/common/schema/AttributeType;->getOid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 95
    invoke-interface {p0}, Lorg/apache/ldap/common/schema/AttributeType;->getEquality()Lorg/apache/ldap/common/schema/MatchingRule;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 97
    const-string v2, "EQUALITY "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 98
    invoke-interface {p0}, Lorg/apache/ldap/common/schema/AttributeType;->getEquality()Lorg/apache/ldap/common/schema/MatchingRule;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ldap/common/schema/MatchingRule;->getOid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 102
    :cond_2
    invoke-interface {p0}, Lorg/apache/ldap/common/schema/AttributeType;->getOrdering()Lorg/apache/ldap/common/schema/MatchingRule;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 104
    const-string v2, "ORDERING "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 105
    invoke-interface {p0}, Lorg/apache/ldap/common/schema/AttributeType;->getOrdering()Lorg/apache/ldap/common/schema/MatchingRule;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ldap/common/schema/MatchingRule;->getOid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 106
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 109
    :cond_3
    invoke-interface {p0}, Lorg/apache/ldap/common/schema/AttributeType;->getSubstr()Lorg/apache/ldap/common/schema/MatchingRule;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 111
    const-string v2, "SUBSTR "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 112
    invoke-interface {p0}, Lorg/apache/ldap/common/schema/AttributeType;->getSubstr()Lorg/apache/ldap/common/schema/MatchingRule;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ldap/common/schema/MatchingRule;->getOid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 116
    :cond_4
    const-string v2, "SYNTAX "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 117
    invoke-interface {p0}, Lorg/apache/ldap/common/schema/AttributeType;->getSyntax()Lorg/apache/ldap/common/schema/Syntax;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ldap/common/schema/Syntax;->getOid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 120
    invoke-interface {p0}, Lorg/apache/ldap/common/schema/AttributeType;->isSingleValue()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 122
    const-string v1, "SINGLE-VALUE\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 126
    :cond_5
    invoke-interface {p0}, Lorg/apache/ldap/common/schema/AttributeType;->isCollective()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 128
    const-string v1, "COLLECTIVE\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 132
    :cond_6
    invoke-interface {p0}, Lorg/apache/ldap/common/schema/AttributeType;->isCanUserModify()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 134
    const-string v1, "NO-USER-MODIFICATION\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 138
    :cond_7
    const-string v1, "USAGE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 139
    invoke-interface {p0}, Lorg/apache/ldap/common/schema/AttributeType;->getUsage()Lorg/apache/ldap/common/schema/UsageEnum;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/ldap/common/schema/UsageEnum;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 140
    const-string p0, " ) "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 142
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDescription(Lorg/apache/ldap/common/schema/DITContentRule;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 170
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "( "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 171
    invoke-interface {p0}, Lorg/apache/ldap/common/schema/DITContentRule;->getOid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 172
    const-string v1, "\nNAME "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 175
    invoke-interface {p0}, Lorg/apache/ldap/common/schema/DITContentRule;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0xa

    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 178
    invoke-interface {p0}, Lorg/apache/ldap/common/schema/DITContentRule;->getDescription()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 180
    const-string v2, "DESC "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 181
    invoke-interface {p0}, Lorg/apache/ldap/common/schema/DITContentRule;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 182
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 185
    :cond_0
    invoke-interface {p0}, Lorg/apache/ldap/common/schema/DITContentRule;->isObsolete()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 187
    const-string v2, "OBSOLETE\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 192
    :cond_1
    invoke-interface {p0}, Lorg/apache/ldap/common/schema/DITContentRule;->getAuxObjectClasses()[Lorg/apache/ldap/common/schema/ObjectClass;

    move-result-object v2

    const/16 v3, 0x9

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    .line 193
    array-length v5, v2

    if-lez v5, :cond_2

    .line 195
    const-string v5, "AUX\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v5, v4

    .line 196
    :goto_0
    array-length v6, v2

    if-ge v5, v6, :cond_2

    .line 198
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 199
    aget-object v6, v2, v5

    invoke-interface {v6}, Lorg/apache/ldap/common/schema/ObjectClass;->getOid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 200
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 204
    :cond_2
    invoke-interface {p0}, Lorg/apache/ldap/common/schema/DITContentRule;->getMustNames()[Lorg/apache/ldap/common/schema/AttributeType;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 205
    array-length v5, v2

    if-lez v5, :cond_3

    .line 207
    const-string v5, "MUST\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v5, v4

    .line 208
    :goto_1
    array-length v6, v2

    if-ge v5, v6, :cond_3

    .line 210
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 211
    aget-object v6, v2, v5

    invoke-interface {v6}, Lorg/apache/ldap/common/schema/AttributeType;->getOid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 212
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 216
    :cond_3
    invoke-interface {p0}, Lorg/apache/ldap/common/schema/DITContentRule;->getMayNames()[Lorg/apache/ldap/common/schema/AttributeType;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 217
    array-length v5, v2

    if-lez v5, :cond_4

    .line 219
    const-string v5, "MAY\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v5, v4

    .line 220
    :goto_2
    array-length v6, v2

    if-ge v5, v6, :cond_4

    .line 222
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 223
    aget-object v6, v2, v5

    invoke-interface {v6}, Lorg/apache/ldap/common/schema/AttributeType;->getOid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 224
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 228
    :cond_4
    invoke-interface {p0}, Lorg/apache/ldap/common/schema/DITContentRule;->getNotNames()[Lorg/apache/ldap/common/schema/AttributeType;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 229
    array-length v2, p0

    if-lez v2, :cond_5

    .line 231
    const-string v2, "NOT\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 232
    :goto_3
    array-length v2, p0

    if-ge v4, v2, :cond_5

    .line 234
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 235
    aget-object v2, p0, v4

    invoke-interface {v2}, Lorg/apache/ldap/common/schema/AttributeType;->getOid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 236
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 240
    :cond_5
    const-string p0, " )"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 241
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDescription(Lorg/apache/ldap/common/schema/DITStructureRule;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 553
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "( "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 554
    invoke-interface {p0}, Lorg/apache/ldap/common/schema/DITStructureRule;->getOid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 555
    const-string v1, "\nNAME "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 558
    invoke-interface {p0}, Lorg/apache/ldap/common/schema/DITStructureRule;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0xa

    .line 559
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 561
    invoke-interface {p0}, Lorg/apache/ldap/common/schema/DITStructureRule;->getDescription()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 563
    const-string v2, "DESC "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 564
    invoke-interface {p0}, Lorg/apache/ldap/common/schema/DITStructureRule;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 565
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 568
    :cond_0
    invoke-interface {p0}, Lorg/apache/ldap/common/schema/DITStructureRule;->isObsolete()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 570
    const-string v2, "OBSOLETE\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 574
    :cond_1
    const-string v2, "FORM "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 575
    invoke-interface {p0}, Lorg/apache/ldap/common/schema/DITStructureRule;->getNameForm()Lorg/apache/ldap/common/schema/NameForm;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ldap/common/schema/NameForm;->getOid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 576
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 578
    invoke-interface {p0}, Lorg/apache/ldap/common/schema/DITStructureRule;->getSuperClasses()[Lorg/apache/ldap/common/schema/DITStructureRule;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 579
    array-length v2, p0

    if-lez v2, :cond_2

    .line 581
    const-string v2, "SUP\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    .line 582
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_2

    const/16 v3, 0x9

    .line 584
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 585
    aget-object v3, p0, v2

    invoke-interface {v3}, Lorg/apache/ldap/common/schema/DITStructureRule;->getOid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 586
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 590
    :cond_2
    const-string p0, " )"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 591
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDescription(Lorg/apache/ldap/common/schema/MatchingRule;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 264
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "( "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 265
    invoke-interface {p0}, Lorg/apache/ldap/common/schema/MatchingRule;->getOid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 266
    const-string v1, "\nNAME "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 269
    invoke-interface {p0}, Lorg/apache/ldap/common/schema/MatchingRule;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0xa

    .line 270
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 272
    invoke-interface {p0}, Lorg/apache/ldap/common/schema/MatchingRule;->getDescription()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 274
    const-string v2, "DESC "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 275
    invoke-interface {p0}, Lorg/apache/ldap/common/schema/MatchingRule;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 276
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 279
    :cond_0
    invoke-interface {p0}, Lorg/apache/ldap/common/schema/MatchingRule;->isObsolete()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 281
    const-string v1, "OBSOLETE\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 285
    :cond_1
    const-string v1, "SYNTAX "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 286
    invoke-interface {p0}, Lorg/apache/ldap/common/schema/MatchingRule;->getSyntax()Lorg/apache/ldap/common/schema/Syntax;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/ldap/common/schema/Syntax;->getOid()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 287
    const-string p0, " ) "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 288
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDescription(Lorg/apache/ldap/common/schema/MatchingRuleUse;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 323
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "( "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 324
    invoke-interface {p0}, Lorg/apache/ldap/common/schema/MatchingRuleUse;->getMatchingRule()Lorg/apache/ldap/common/schema/MatchingRule;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ldap/common/schema/MatchingRule;->getOid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 325
    const-string v2, "\nNAME "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 328
    invoke-interface {p0}, Lorg/apache/ldap/common/schema/MatchingRuleUse;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v2, 0xa

    .line 329
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 331
    invoke-interface {p0}, Lorg/apache/ldap/common/schema/MatchingRuleUse;->getDescription()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 333
    const-string v3, "DESC "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 334
    invoke-interface {p0}, Lorg/apache/ldap/common/schema/MatchingRuleUse;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 335
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 338
    :cond_0
    invoke-interface {p0}, Lorg/apache/ldap/common/schema/MatchingRuleUse;->isObsolete()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 340
    const-string v3, "OBSOLETE\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 344
    :cond_1
    const-string v3, "APPLIES "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 345
    invoke-interface {p0}, Lorg/apache/ldap/common/schema/MatchingRuleUse;->getApplicableAttributes()[Lorg/apache/ldap/common/schema/AttributeType;

    move-result-object p0

    .line 347
    array-length v3, p0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_2

    .line 349
    aget-object p0, p0, v4

    invoke-interface {p0}, Lorg/apache/ldap/common/schema/AttributeType;->getOid()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 353
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 354
    aget-object v1, p0, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 355
    :goto_0
    array-length v1, p0

    if-ge v5, v1, :cond_3

    .line 357
    const-string v1, " $ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 358
    aget-object v1, p0, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 360
    :cond_3
    const-string p0, " ) "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 363
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 364
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDescription(Lorg/apache/ldap/common/schema/NameForm;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 389
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "( "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 390
    invoke-interface {p0}, Lorg/apache/ldap/common/schema/NameForm;->getOid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 391
    const-string v1, "\nNAME "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 394
    invoke-interface {p0}, Lorg/apache/ldap/common/schema/NameForm;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0xa

    .line 395
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 397
    invoke-interface {p0}, Lorg/apache/ldap/common/schema/NameForm;->getDescription()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 399
    const-string v2, "DESC "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 400
    invoke-interface {p0}, Lorg/apache/ldap/common/schema/NameForm;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 401
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 404
    :cond_0
    invoke-interface {p0}, Lorg/apache/ldap/common/schema/NameForm;->isObsolete()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 406
    const-string v2, "OBSOLETE\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 410
    :cond_1
    const-string v2, "OC "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 411
    invoke-interface {p0}, Lorg/apache/ldap/common/schema/NameForm;->getObjectClass()Lorg/apache/ldap/common/schema/ObjectClass;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ldap/common/schema/ObjectClass;->getOid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 412
    const-string v2, "\nMUST\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 415
    invoke-interface {p0}, Lorg/apache/ldap/common/schema/NameForm;->getMustUse()[Lorg/apache/ldap/common/schema/AttributeType;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    .line 416
    :goto_0
    array-length v5, v2

    const/16 v6, 0x9

    if-ge v4, v5, :cond_2

    .line 418
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 419
    aget-object v5, v2, v4

    invoke-interface {v5}, Lorg/apache/ldap/common/schema/AttributeType;->getOid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 420
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 423
    :cond_2
    invoke-interface {p0}, Lorg/apache/ldap/common/schema/NameForm;->getMaytUse()[Lorg/apache/ldap/common/schema/AttributeType;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 424
    array-length v4, p0

    if-lez v4, :cond_3

    .line 426
    const-string v4, "MAY\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 427
    :goto_1
    array-length v4, v2

    if-ge v3, v4, :cond_3

    .line 429
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 430
    aget-object v4, p0, v3

    invoke-interface {v4}, Lorg/apache/ldap/common/schema/AttributeType;->getOid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 431
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 435
    :cond_3
    const-string p0, " )"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 436
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDescription(Lorg/apache/ldap/common/schema/ObjectClass;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 463
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "( "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 464
    invoke-interface {p0}, Lorg/apache/ldap/common/schema/ObjectClass;->getOid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 465
    const-string v1, "\nNAME "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 468
    invoke-interface {p0}, Lorg/apache/ldap/common/schema/ObjectClass;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0xa

    .line 469
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 471
    invoke-interface {p0}, Lorg/apache/ldap/common/schema/ObjectClass;->getDescription()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 473
    const-string v2, "DESC "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 474
    invoke-interface {p0}, Lorg/apache/ldap/common/schema/ObjectClass;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 475
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 478
    :cond_0
    invoke-interface {p0}, Lorg/apache/ldap/common/schema/ObjectClass;->isObsolete()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 480
    const-string v2, "OBSOLETE\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 484
    :cond_1
    invoke-interface {p0}, Lorg/apache/ldap/common/schema/ObjectClass;->getSuperClasses()[Lorg/apache/ldap/common/schema/ObjectClass;

    move-result-object v2

    const/16 v3, 0x9

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    .line 485
    array-length v5, v2

    if-lez v5, :cond_2

    .line 487
    const-string v5, "SUP\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v5, v4

    .line 488
    :goto_0
    array-length v6, v2

    if-ge v5, v6, :cond_2

    .line 490
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 491
    aget-object v6, v2, v5

    invoke-interface {v6}, Lorg/apache/ldap/common/schema/ObjectClass;->getOid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 492
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 496
    :cond_2
    invoke-interface {p0}, Lorg/apache/ldap/common/schema/ObjectClass;->getType()Lorg/apache/ldap/common/schema/ObjectClassTypeEnum;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 498
    invoke-interface {p0}, Lorg/apache/ldap/common/schema/ObjectClass;->getType()Lorg/apache/ldap/common/schema/ObjectClassTypeEnum;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ldap/common/schema/ObjectClassTypeEnum;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 499
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 502
    :cond_3
    invoke-interface {p0}, Lorg/apache/ldap/common/schema/ObjectClass;->getMustList()[Lorg/apache/ldap/common/schema/AttributeType;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 503
    array-length v5, v2

    if-lez v5, :cond_4

    .line 505
    const-string v5, "MUST\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v5, v4

    .line 506
    :goto_1
    array-length v6, v2

    if-ge v5, v6, :cond_4

    .line 508
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 509
    aget-object v6, v2, v5

    invoke-interface {v6}, Lorg/apache/ldap/common/schema/AttributeType;->getOid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 510
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 514
    :cond_4
    invoke-interface {p0}, Lorg/apache/ldap/common/schema/ObjectClass;->getMayList()[Lorg/apache/ldap/common/schema/AttributeType;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 515
    array-length v2, p0

    if-lez v2, :cond_5

    .line 517
    const-string v2, "MAY\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 518
    :goto_2
    array-length v2, p0

    if-ge v4, v2, :cond_5

    .line 520
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 521
    aget-object v2, p0, v4

    invoke-interface {v2}, Lorg/apache/ldap/common/schema/AttributeType;->getOid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 522
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 526
    :cond_5
    const-string p0, " )"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 527
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDescription(Lorg/apache/ldap/common/schema/Syntax;)Ljava/lang/String;
    .locals 3

    .line 611
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "( "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 612
    invoke-interface {p0}, Lorg/apache/ldap/common/schema/Syntax;->getOid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0xa

    .line 613
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 615
    invoke-interface {p0}, Lorg/apache/ldap/common/schema/Syntax;->getDescription()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 617
    const-string v2, "DESC "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 618
    invoke-interface {p0}, Lorg/apache/ldap/common/schema/Syntax;->getDescription()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 619
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 622
    :cond_0
    const-string p0, " )"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 623
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
