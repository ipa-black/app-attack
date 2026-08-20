.class public final Lorg/apache/commons/collections/functors/NonePredicate;
.super Ljava/lang/Object;
.source "NonePredicate.java"

# interfaces
.implements Lorg/apache/commons/collections/Predicate;
.implements Ljava/io/Serializable;


# static fields
.field static final serialVersionUID:J = 0x1bdc79727f17bb61L


# instance fields
.field private final iPredicates:[Lorg/apache/commons/collections/Predicate;


# direct methods
.method public constructor <init>([Lorg/apache/commons/collections/Predicate;)V
    .locals 0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object p1, p0, Lorg/apache/commons/collections/functors/NonePredicate;->iPredicates:[Lorg/apache/commons/collections/Predicate;

    return-void
.end method

.method public static getInstance(Ljava/util/Collection;)Lorg/apache/commons/collections/Predicate;
    .locals 1

    .line 102
    invoke-static {p0}, Lorg/apache/commons/collections/functors/FunctorUtils;->validate(Ljava/util/Collection;)[Lorg/apache/commons/collections/Predicate;

    move-result-object p0

    .line 103
    new-instance v0, Lorg/apache/commons/collections/functors/NonePredicate;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/functors/NonePredicate;-><init>([Lorg/apache/commons/collections/Predicate;)V

    return-object v0
.end method

.method public static getInstance([Lorg/apache/commons/collections/Predicate;)Lorg/apache/commons/collections/Predicate;
    .locals 1

    .line 87
    invoke-static {p0}, Lorg/apache/commons/collections/functors/FunctorUtils;->validateMin2([Lorg/apache/commons/collections/Predicate;)V

    .line 88
    invoke-static {p0}, Lorg/apache/commons/collections/functors/FunctorUtils;->copy([Lorg/apache/commons/collections/Predicate;)[Lorg/apache/commons/collections/Predicate;

    move-result-object p0

    .line 89
    new-instance v0, Lorg/apache/commons/collections/functors/NonePredicate;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/functors/NonePredicate;-><init>([Lorg/apache/commons/collections/Predicate;)V

    return-object v0
.end method


# virtual methods
.method public evaluate(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 121
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/collections/functors/NonePredicate;->iPredicates:[Lorg/apache/commons/collections/Predicate;

    array-length v3, v2

    if-lt v1, v3, :cond_0

    const/4 p1, 0x1

    return p1

    .line 122
    :cond_0
    aget-object v2, v2, v1

    invoke-interface {v2, p1}, Lorg/apache/commons/collections/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
