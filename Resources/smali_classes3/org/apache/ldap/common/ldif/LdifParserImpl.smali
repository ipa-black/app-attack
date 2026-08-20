.class public Lorg/apache/ldap/common/ldif/LdifParserImpl;
.super Ljava/lang/Object;
.source "LdifParserImpl.java"

# interfaces
.implements Lorg/apache/ldap/common/ldif/LdifParser;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public base64decode(Ljava/lang/String;)[B
    .locals 0

    .line 57
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-static {p1}, Lorg/apache/ldap/common/util/Base64;->decode([C)[B

    move-result-object p1

    return-object p1
.end method

.method public parse(Ljava/lang/String;)Lorg/apache/ldap/common/ldif/LdifEntry;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 160
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    .line 161
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    .line 163
    new-instance v4, Ljava/io/StringReader;

    invoke-direct {v4, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 164
    new-instance v5, Ljava/io/BufferedReader;

    invoke-direct {v5, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 165
    new-instance v4, Lorg/apache/ldap/common/ldif/LdifEntry;

    invoke-direct {v4}, Lorg/apache/ldap/common/ldif/LdifEntry;-><init>()V

    const/4 v6, 0x0

    const/4 v8, -0x1

    :goto_0
    move v10, v6

    :cond_0
    :goto_1
    move v11, v8

    const/4 v9, 0x0

    .line 170
    :goto_2
    :try_start_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_16

    .line 172
    const-string v13, "-"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const-string v14, "A modification type must be supplied for a change type of modify"

    const-string v15, "modify"

    if-eqz v13, :cond_4

    if-eqz v9, :cond_0

    .line 176
    :try_start_1
    invoke-virtual {v4}, Lorg/apache/ldap/common/ldif/LdifEntry;->getModType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    if-eq v11, v8, :cond_1

    .line 185
    invoke-virtual {v4, v11, v2, v3}, Lorg/apache/ldap/common/ldif/LdifEntry;->addModificationItem(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 180
    :cond_1
    new-instance v0, Lorg/apache/ldap/common/exception/LdapNamingException;

    sget-object v2, Lorg/apache/ldap/common/message/ResultCodeEnum;->OTHER:Lorg/apache/ldap/common/message/ResultCodeEnum;

    invoke-direct {v0, v14, v2}, Lorg/apache/ldap/common/exception/LdapNamingException;-><init>(Ljava/lang/String;Lorg/apache/ldap/common/message/ResultCodeEnum;)V

    throw v0

    :cond_2
    if-eqz v10, :cond_3

    if-eqz v3, :cond_3

    .line 192
    invoke-virtual {v1, v3}, Lorg/apache/ldap/common/ldif/LdifParserImpl;->base64decode(Ljava/lang/String;)[B

    move-result-object v9

    invoke-virtual {v4, v2, v9}, Lorg/apache/ldap/common/ldif/LdifEntry;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 198
    :cond_3
    invoke-virtual {v4, v2, v3}, Lorg/apache/ldap/common/ldif/LdifEntry;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    const/16 v2, 0x3a

    .line 207
    invoke-virtual {v12, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-eq v3, v8, :cond_15

    .line 216
    invoke-virtual {v12, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    add-int/lit8 v3, v3, 0x1

    .line 219
    invoke-virtual {v12, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    const/16 v16, 0x1

    if-ne v7, v2, :cond_5

    move/from16 v10, v16

    :cond_5
    :goto_3
    add-int/lit8 v3, v3, 0x1

    .line 227
    :try_start_2
    invoke-virtual {v12, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v7, 0x20

    if-ne v2, v7, :cond_6

    goto :goto_3

    .line 233
    :cond_6
    invoke-virtual {v12, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    .line 237
    :catch_0
    :try_start_3
    const-string v2, ""

    :goto_4
    move-object v3, v2

    .line 244
    const-string v2, "dn"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 246
    invoke-virtual {v4, v3}, Lorg/apache/ldap/common/ldif/LdifEntry;->setDn(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 248
    :cond_7
    const-string v2, "version"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 250
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v4, v2}, Lorg/apache/ldap/common/ldif/LdifEntry;->setVersion(I)V

    goto/16 :goto_5

    .line 252
    :cond_8
    const-string v2, "control"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    goto/16 :goto_5

    .line 256
    :cond_9
    const-string v2, "changetype"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 258
    invoke-virtual {v4, v3}, Lorg/apache/ldap/common/ldif/LdifEntry;->setModType(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 260
    :cond_a
    const-string v2, "add"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    const-string v7, " change type"

    const-string v12, " identifier on "

    const-string v6, "Cannot use modification "

    if-eqz v2, :cond_c

    .line 262
    :try_start_4
    invoke-virtual {v4}, Lorg/apache/ldap/common/ldif/LdifEntry;->getModType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    move-object v2, v13

    move/from16 v11, v16

    goto/16 :goto_6

    .line 264
    :cond_b
    new-instance v0, Lorg/apache/ldap/common/exception/LdapNamingException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v4}, Lorg/apache/ldap/common/ldif/LdifEntry;->getModType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/apache/ldap/common/message/ResultCodeEnum;->OTHER:Lorg/apache/ldap/common/message/ResultCodeEnum;

    invoke-direct {v0, v2, v3}, Lorg/apache/ldap/common/exception/LdapNamingException;-><init>(Ljava/lang/String;Lorg/apache/ldap/common/message/ResultCodeEnum;)V

    throw v0

    .line 272
    :cond_c
    const-string v2, "replace"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 274
    invoke-virtual {v4}, Lorg/apache/ldap/common/ldif/LdifEntry;->getModType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    const/4 v11, 0x2

    goto/16 :goto_5

    .line 276
    :cond_d
    new-instance v0, Lorg/apache/ldap/common/exception/LdapNamingException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v4}, Lorg/apache/ldap/common/ldif/LdifEntry;->getModType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/apache/ldap/common/message/ResultCodeEnum;->OTHER:Lorg/apache/ldap/common/message/ResultCodeEnum;

    invoke-direct {v0, v2, v3}, Lorg/apache/ldap/common/exception/LdapNamingException;-><init>(Ljava/lang/String;Lorg/apache/ldap/common/message/ResultCodeEnum;)V

    throw v0

    .line 284
    :cond_e
    const-string v2, "delete"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 286
    invoke-virtual {v4}, Lorg/apache/ldap/common/ldif/LdifEntry;->getModType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    const/4 v11, 0x3

    if-eqz v3, :cond_14

    move-object v9, v3

    goto :goto_5

    .line 288
    :cond_f
    new-instance v0, Lorg/apache/ldap/common/exception/LdapNamingException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v4}, Lorg/apache/ldap/common/ldif/LdifEntry;->getModType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/apache/ldap/common/message/ResultCodeEnum;->OTHER:Lorg/apache/ldap/common/message/ResultCodeEnum;

    invoke-direct {v0, v2, v3}, Lorg/apache/ldap/common/exception/LdapNamingException;-><init>(Ljava/lang/String;Lorg/apache/ldap/common/message/ResultCodeEnum;)V

    throw v0

    .line 302
    :cond_10
    invoke-virtual {v4}, Lorg/apache/ldap/common/ldif/LdifEntry;->getModType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    if-eq v11, v8, :cond_11

    .line 310
    invoke-virtual {v4, v11, v13, v3}, Lorg/apache/ldap/common/ldif/LdifEntry;->addModificationItem(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_5

    .line 306
    :cond_11
    new-instance v0, Lorg/apache/ldap/common/exception/LdapNamingException;

    sget-object v2, Lorg/apache/ldap/common/message/ResultCodeEnum;->OTHER:Lorg/apache/ldap/common/message/ResultCodeEnum;

    invoke-direct {v0, v14, v2}, Lorg/apache/ldap/common/exception/LdapNamingException;-><init>(Ljava/lang/String;Lorg/apache/ldap/common/message/ResultCodeEnum;)V

    throw v0

    :cond_12
    if-eqz v10, :cond_13

    if-eqz v3, :cond_13

    .line 317
    invoke-virtual {v1, v3}, Lorg/apache/ldap/common/ldif/LdifParserImpl;->base64decode(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v4, v13, v2}, Lorg/apache/ldap/common/ldif/LdifEntry;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v2, v13

    const/4 v6, 0x0

    const/4 v10, 0x0

    goto/16 :goto_2

    .line 323
    :cond_13
    invoke-virtual {v4, v13, v3}, Lorg/apache/ldap/common/ldif/LdifEntry;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_14
    :goto_5
    move-object v2, v13

    :goto_6
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 209
    :cond_15
    new-instance v2, Lorg/apache/ldap/common/exception/LdapNamingException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Line "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "] does not correspond to an LDIF entry "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "attribute value pair.\n{"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, "}"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lorg/apache/ldap/common/message/ResultCodeEnum;->OTHER:Lorg/apache/ldap/common/message/ResultCodeEnum;

    invoke-direct {v2, v0, v3}, Lorg/apache/ldap/common/exception/LdapNamingException;-><init>(Ljava/lang/String;Lorg/apache/ldap/common/message/ResultCodeEnum;)V

    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_16
    return-object v4

    :catch_1
    move-exception v0

    .line 333
    new-instance v2, Lorg/apache/ldap/common/exception/LdapNamingException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lorg/apache/ldap/common/message/ResultCodeEnum;->OTHER:Lorg/apache/ldap/common/message/ResultCodeEnum;

    invoke-direct {v2, v0, v3}, Lorg/apache/ldap/common/exception/LdapNamingException;-><init>(Ljava/lang/String;Lorg/apache/ldap/common/message/ResultCodeEnum;)V

    throw v2
.end method

.method public parse(Ljavax/naming/directory/Attributes;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 79
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 80
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const/4 v0, 0x0

    :goto_0
    move v2, v0

    .line 84
    :goto_1
    :try_start_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    const/16 v4, 0x3a

    .line 87
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_3

    .line 96
    invoke-virtual {v3, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    .line 99
    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v8, 0x1

    if-ne v7, v4, :cond_0

    move v2, v8

    :cond_0
    :goto_2
    add-int/2addr v5, v8

    .line 107
    :try_start_1
    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v7, 0x20

    if-ne v4, v7, :cond_1

    goto :goto_2

    .line 112
    :cond_1
    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 116
    :catch_0
    :try_start_2
    const-string v3, ""

    :goto_3
    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    .line 127
    invoke-virtual {p0, v3}, Lorg/apache/ldap/common/ldif/LdifParserImpl;->base64decode(Ljava/lang/String;)[B

    move-result-object v2

    invoke-interface {p1, v6, v2}, Ljavax/naming/directory/Attributes;->put(Ljava/lang/String;Ljava/lang/Object;)Ljavax/naming/directory/Attribute;

    goto :goto_0

    .line 132
    :cond_2
    invoke-interface {p1, v6, v3}, Ljavax/naming/directory/Attributes;->put(Ljava/lang/String;Ljava/lang/Object;)Ljavax/naming/directory/Attribute;

    goto :goto_1

    .line 89
    :cond_3
    new-instance p1, Lorg/apache/ldap/common/exception/LdapNamingException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "] does not correspond to an LDIF entry "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "attribute value pair.\n{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    const-string v0, "}"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lorg/apache/ldap/common/message/ResultCodeEnum;->OTHER:Lorg/apache/ldap/common/message/ResultCodeEnum;

    invoke-direct {p1, p2, v0}, Lorg/apache/ldap/common/exception/LdapNamingException;-><init>(Ljava/lang/String;Lorg/apache/ldap/common/message/ResultCodeEnum;)V

    throw p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_4
    return-void

    .line 139
    :catch_1
    new-instance p1, Lorg/apache/ldap/common/exception/LdapNamingException;

    sget-object p2, Lorg/apache/ldap/common/message/ResultCodeEnum;->OTHER:Lorg/apache/ldap/common/message/ResultCodeEnum;

    invoke-direct {p1, p2}, Lorg/apache/ldap/common/exception/LdapNamingException;-><init>(Lorg/apache/ldap/common/message/ResultCodeEnum;)V

    throw p1
.end method
