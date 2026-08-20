.class public Lorg/apache/ldap/common/util/NamespaceTools;
.super Ljava/lang/Object;
.source "NamespaceTools.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLastComponent(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/16 v0, 0x2c

    .line 287
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    return-object p0

    .line 292
    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getNamespaceString(Ljava/lang/String;Ljavax/naming/Name;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/InvalidNameException;
        }
    .end annotation

    .line 250
    instance-of v0, p1, Ljavax/naming/CompositeName;

    if-eqz v0, :cond_1

    .line 253
    invoke-interface {p1}, Ljavax/naming/Name;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 259
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/16 p0, 0x2c

    .line 260
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 p0, 0x0

    .line 261
    invoke-interface {p1, p0}, Ljavax/naming/Name;->get(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 262
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 255
    :cond_0
    new-instance p0, Ljavax/naming/InvalidNameException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v0, " has more components than namespace can handle"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljavax/naming/InvalidNameException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 267
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getNamespaceString(Ljavax/naming/Name;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/InvalidNameException;
        }
    .end annotation

    .line 218
    instance-of v0, p0, Ljavax/naming/CompositeName;

    if-eqz v0, :cond_1

    .line 221
    invoke-interface {p0}, Ljavax/naming/Name;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 228
    invoke-interface {p0, v0}, Ljavax/naming/Name;->get(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 223
    :cond_0
    new-instance v0, Ljavax/naming/InvalidNameException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p0

    const-string v1, " has more components than namespace can handle"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljavax/naming/InvalidNameException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 233
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getParent(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/InvalidNameException;
        }
    .end annotation

    if-eqz p0, :cond_2

    const/16 v0, 0x3d

    .line 89
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const/16 v0, 0x2c

    .line 93
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 98
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 91
    :cond_1
    new-instance p0, Ljavax/naming/InvalidNameException;

    const-string v0, "A DN should have an = sign."

    invoke-direct {p0, v0}, Ljavax/naming/InvalidNameException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 87
    :cond_2
    new-instance p0, Ljavax/naming/InvalidNameException;

    const-string v0, "A null DN is not a valid name."

    invoke-direct {p0, v0}, Ljavax/naming/InvalidNameException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getRdn(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/16 v0, 0x2c

    .line 311
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    return-object p0

    :cond_1
    const/4 v1, 0x0

    .line 316
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getRdnAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x3d

    .line 358
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x0

    .line 359
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getRdnValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x3d

    .line 372
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 373
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isDescendant(Ljavax/naming/Name;Ljavax/naming/Name;)Z
    .locals 0

    .line 404
    invoke-interface {p1, p0}, Ljavax/naming/Name;->startsWith(Ljavax/naming/Name;)Z

    move-result p0

    return p0
.end method

.method public static isRoot(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/InvalidNameException;
        }
    .end annotation

    if-eqz p0, :cond_2

    const/16 v0, 0x3d

    .line 58
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const/16 v0, 0x2c

    .line 62
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    if-ne p0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 60
    :cond_1
    new-instance p0, Ljavax/naming/InvalidNameException;

    const-string v0, "A DN should have an = sign."

    invoke-direct {p0, v0}, Ljavax/naming/InvalidNameException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 56
    :cond_2
    new-instance p0, Ljavax/naming/InvalidNameException;

    const-string v0, "A null DN is not a valid name."

    invoke-direct {p0, v0}, Ljavax/naming/InvalidNameException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isSibling(Ljavax/naming/Name;Ljavax/naming/Name;)Z
    .locals 2

    .line 386
    invoke-interface {p0}, Ljavax/naming/Name;->size()I

    move-result v0

    invoke-interface {p1}, Ljavax/naming/Name;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 388
    invoke-interface {p0, v0}, Ljavax/naming/Name;->getSuffix(I)Ljavax/naming/Name;

    move-result-object p0

    invoke-interface {p1, p0}, Ljavax/naming/Name;->startsWith(Ljavax/naming/Name;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static setRdn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/16 v0, 0x2c

    .line 337
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    return-object p0

    .line 342
    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 343
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 p0, 0x0

    .line 344
    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 345
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
