.class public Lorg/apache/ldap/common/util/JoinIterator;
.super Ljava/lang/Object;
.source "JoinIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private index:I

.field private final iterators:[Ljava/util/Iterator;


# direct methods
.method public constructor <init>([Ljava/util/Iterator;)V
    .locals 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 46
    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 52
    iput-object p1, p0, Lorg/apache/ldap/common/util/JoinIterator;->iterators:[Ljava/util/Iterator;

    const/4 p1, 0x0

    .line 53
    iput p1, p0, Lorg/apache/ldap/common/util/JoinIterator;->index:I

    return-void

    .line 48
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Iterator[] arg must not be null, empty or composed of less than two Iterators"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public hasNext()Z
    .locals 3

    .line 65
    :goto_0
    iget v0, p0, Lorg/apache/ldap/common/util/JoinIterator;->index:I

    iget-object v1, p0, Lorg/apache/ldap/common/util/JoinIterator;->iterators:[Ljava/util/Iterator;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 67
    aget-object v0, v1, v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 65
    :cond_0
    iget v0, p0, Lorg/apache/ldap/common/util/JoinIterator;->index:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/ldap/common/util/JoinIterator;->index:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3

    .line 79
    :goto_0
    iget v0, p0, Lorg/apache/ldap/common/util/JoinIterator;->index:I

    iget-object v1, p0, Lorg/apache/ldap/common/util/JoinIterator;->iterators:[Ljava/util/Iterator;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 81
    aget-object v0, v1, v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lorg/apache/ldap/common/util/JoinIterator;->iterators:[Ljava/util/Iterator;

    iget v1, p0, Lorg/apache/ldap/common/util/JoinIterator;->index:I

    aget-object v0, v0, v1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 79
    :cond_0
    iget v0, p0, Lorg/apache/ldap/common/util/JoinIterator;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/ldap/common/util/JoinIterator;->index:I

    goto :goto_0

    .line 87
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 1

    .line 59
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
