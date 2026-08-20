.class public Lorg/apache/ldap/common/util/ArrayEnumeration;
.super Ljava/lang/Object;
.source "ArrayEnumeration.java"

# interfaces
.implements Ljava/util/Enumeration;


# instance fields
.field private final array:[Ljava/lang/Object;

.field private index:I


# direct methods
.method public constructor <init>([Ljava/lang/Object;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput v0, p0, Lorg/apache/ldap/common/util/ArrayEnumeration;->index:I

    .line 46
    iput-object p1, p0, Lorg/apache/ldap/common/util/ArrayEnumeration;->array:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final hasMoreElements()Z
    .locals 2

    .line 52
    iget-object v0, p0, Lorg/apache/ldap/common/util/ArrayEnumeration;->array:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    array-length v1, v0

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/apache/ldap/common/util/ArrayEnumeration;->index:I

    array-length v0, v0

    if-ge v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 3

    .line 58
    invoke-virtual {p0}, Lorg/apache/ldap/common/util/ArrayEnumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lorg/apache/ldap/common/util/ArrayEnumeration;->array:[Ljava/lang/Object;

    iget v1, p0, Lorg/apache/ldap/common/util/ArrayEnumeration;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/ldap/common/util/ArrayEnumeration;->index:I

    aget-object v0, v0, v1

    return-object v0

    .line 60
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "no more objects in array"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
