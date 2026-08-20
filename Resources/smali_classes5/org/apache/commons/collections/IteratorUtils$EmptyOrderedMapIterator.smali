.class Lorg/apache/commons/collections/IteratorUtils$EmptyOrderedMapIterator;
.super Lorg/apache/commons/collections/IteratorUtils$EmptyMapIterator;
.source "IteratorUtils.java"

# interfaces
.implements Lorg/apache/commons/collections/OrderedMapIterator;
.implements Lorg/apache/commons/collections/ResettableIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/IteratorUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EmptyOrderedMapIterator"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 936
    invoke-direct {p0}, Lorg/apache/commons/collections/IteratorUtils$EmptyMapIterator;-><init>()V

    return-void
.end method


# virtual methods
.method public hasPrevious()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 2

    .line 944
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Iterator contains no elements"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
