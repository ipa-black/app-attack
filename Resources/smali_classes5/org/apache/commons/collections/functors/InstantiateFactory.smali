.class public Lorg/apache/commons/collections/functors/InstantiateFactory;
.super Ljava/lang/Object;
.source "InstantiateFactory.java"

# interfaces
.implements Lorg/apache/commons/collections/Factory;
.implements Ljava/io/Serializable;


# static fields
.field static final serialVersionUID:J = -0x6b4e636198defb15L


# instance fields
.field private final iArgs:[Ljava/lang/Object;

.field private final iClassToInstantiate:Ljava/lang/Class;

.field private transient iConstructor:Ljava/lang/reflect/Constructor;

.field private final iParamTypes:[Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 83
    iput-object v0, p0, Lorg/apache/commons/collections/functors/InstantiateFactory;->iConstructor:Ljava/lang/reflect/Constructor;

    .line 119
    iput-object p1, p0, Lorg/apache/commons/collections/functors/InstantiateFactory;->iClassToInstantiate:Ljava/lang/Class;

    .line 120
    iput-object v0, p0, Lorg/apache/commons/collections/functors/InstantiateFactory;->iParamTypes:[Ljava/lang/Class;

    .line 121
    iput-object v0, p0, Lorg/apache/commons/collections/functors/InstantiateFactory;->iArgs:[Ljava/lang/Object;

    .line 122
    invoke-direct {p0}, Lorg/apache/commons/collections/functors/InstantiateFactory;->findConstructor()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)V
    .locals 1

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 83
    iput-object v0, p0, Lorg/apache/commons/collections/functors/InstantiateFactory;->iConstructor:Ljava/lang/reflect/Constructor;

    .line 135
    iput-object p1, p0, Lorg/apache/commons/collections/functors/InstantiateFactory;->iClassToInstantiate:Ljava/lang/Class;

    .line 136
    iput-object p2, p0, Lorg/apache/commons/collections/functors/InstantiateFactory;->iParamTypes:[Ljava/lang/Class;

    .line 137
    iput-object p3, p0, Lorg/apache/commons/collections/functors/InstantiateFactory;->iArgs:[Ljava/lang/Object;

    .line 138
    invoke-direct {p0}, Lorg/apache/commons/collections/functors/InstantiateFactory;->findConstructor()V

    return-void
.end method

.method private findConstructor()V
    .locals 2

    .line 146
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections/functors/InstantiateFactory;->iClassToInstantiate:Ljava/lang/Class;

    iget-object v1, p0, Lorg/apache/commons/collections/functors/InstantiateFactory;->iParamTypes:[Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/functors/InstantiateFactory;->iConstructor:Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 149
    :catch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "InstantiateFactory: The constructor must exist and be public "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Lorg/apache/commons/collections/Factory;
    .locals 2

    if-eqz p0, :cond_6

    if-nez p1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_2

    :cond_1
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 96
    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_2

    goto :goto_0

    .line 99
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Parameter types must match the arguments"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    if-eqz p1, :cond_5

    .line 102
    array-length v0, p1

    if-nez v0, :cond_4

    goto :goto_1

    .line 105
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Class;

    .line 106
    invoke-virtual {p2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/Object;

    .line 107
    new-instance v0, Lorg/apache/commons/collections/functors/InstantiateFactory;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/collections/functors/InstantiateFactory;-><init>(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)V

    return-object v0

    .line 103
    :cond_5
    :goto_1
    new-instance p1, Lorg/apache/commons/collections/functors/InstantiateFactory;

    invoke-direct {p1, p0}, Lorg/apache/commons/collections/functors/InstantiateFactory;-><init>(Ljava/lang/Class;)V

    return-object p1

    .line 94
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Class to instantiate must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public create()Ljava/lang/Object;
    .locals 3

    .line 158
    iget-object v0, p0, Lorg/apache/commons/collections/functors/InstantiateFactory;->iConstructor:Ljava/lang/reflect/Constructor;

    if-nez v0, :cond_0

    .line 159
    invoke-direct {p0}, Lorg/apache/commons/collections/functors/InstantiateFactory;->findConstructor()V

    .line 163
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections/functors/InstantiateFactory;->iConstructor:Ljava/lang/reflect/Constructor;

    iget-object v1, p0, Lorg/apache/commons/collections/functors/InstantiateFactory;->iArgs:[Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 170
    new-instance v1, Lorg/apache/commons/collections/FunctorException;

    const-string v2, "InstantiateFactory: Constructor threw an exception"

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/collections/FunctorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 168
    new-instance v1, Lorg/apache/commons/collections/FunctorException;

    const-string v2, "InstantiateFactory: Constructor must be public"

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/collections/FunctorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    .line 166
    new-instance v1, Lorg/apache/commons/collections/FunctorException;

    const-string v2, "InstantiateFactory: InstantiationException"

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/collections/FunctorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
