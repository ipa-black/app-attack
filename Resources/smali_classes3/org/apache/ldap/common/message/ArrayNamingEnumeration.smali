.class public Lorg/apache/ldap/common/message/ArrayNamingEnumeration;
.super Ljava/lang/Object;
.source "ArrayNamingEnumeration.java"

# interfaces
.implements Ljavax/naming/NamingEnumeration;


# instance fields
.field private index:I

.field private final objects:[Ljava/lang/Object;


# direct methods
.method public constructor <init>([Ljava/lang/Object;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput v0, p0, Lorg/apache/ldap/common/message/ArrayNamingEnumeration;->index:I

    .line 45
    iput-object p1, p0, Lorg/apache/ldap/common/message/ArrayNamingEnumeration;->objects:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 51
    iget-object v0, p0, Lorg/apache/ldap/common/message/ArrayNamingEnumeration;->objects:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 53
    array-length v0, v0

    iput v0, p0, Lorg/apache/ldap/common/message/ArrayNamingEnumeration;->index:I

    :cond_0
    return-void
.end method

.method public hasMore()Z
    .locals 3

    .line 60
    iget-object v0, p0, Lorg/apache/ldap/common/message/ArrayNamingEnumeration;->objects:[Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    array-length v2, v0

    if-nez v2, :cond_0

    goto :goto_0

    .line 65
    :cond_0
    iget v2, p0, Lorg/apache/ldap/common/message/ArrayNamingEnumeration;->index:I

    array-length v0, v0

    if-ge v2, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method public hasMoreElements()Z
    .locals 1

    .line 84
    invoke-virtual {p0}, Lorg/apache/ldap/common/message/ArrayNamingEnumeration;->hasMore()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3

    .line 71
    iget-object v0, p0, Lorg/apache/ldap/common/message/ArrayNamingEnumeration;->objects:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    array-length v1, v0

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/apache/ldap/common/message/ArrayNamingEnumeration;->index:I

    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 76
    aget-object v0, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 77
    iput v1, p0, Lorg/apache/ldap/common/message/ArrayNamingEnumeration;->index:I

    return-object v0

    .line 73
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 1

    .line 90
    invoke-virtual {p0}, Lorg/apache/ldap/common/message/ArrayNamingEnumeration;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
