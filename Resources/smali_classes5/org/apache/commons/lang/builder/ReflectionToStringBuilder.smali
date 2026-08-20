.class public Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;
.super Lorg/apache/commons/lang/builder/ToStringBuilder;
.source "ReflectionToStringBuilder.java"


# static fields
.field private static registry:Ljava/lang/ThreadLocal;


# instance fields
.field private appendTransients:Z

.field private upToClass:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 115
    new-instance v0, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder$1;

    invoke-direct {v0}, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder$1;-><init>()V

    sput-object v0, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->registry:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 301
    invoke-direct {p0, p1}, Lorg/apache/commons/lang/builder/ToStringBuilder;-><init>(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 282
    iput-boolean p1, p0, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->appendTransients:Z

    const/4 p1, 0x0

    .line 287
    iput-object p1, p0, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->upToClass:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lorg/apache/commons/lang/builder/ToStringStyle;)V
    .locals 0

    .line 317
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/lang/builder/ToStringBuilder;-><init>(Ljava/lang/Object;Lorg/apache/commons/lang/builder/ToStringStyle;)V

    const/4 p1, 0x0

    .line 282
    iput-boolean p1, p0, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->appendTransients:Z

    const/4 p1, 0x0

    .line 287
    iput-object p1, p0, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->upToClass:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lorg/apache/commons/lang/builder/ToStringStyle;Ljava/lang/StringBuffer;)V
    .locals 0

    .line 337
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/lang/builder/ToStringBuilder;-><init>(Ljava/lang/Object;Lorg/apache/commons/lang/builder/ToStringStyle;Ljava/lang/StringBuffer;)V

    const/4 p1, 0x0

    .line 282
    iput-boolean p1, p0, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->appendTransients:Z

    const/4 p1, 0x0

    .line 287
    iput-object p1, p0, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->upToClass:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lorg/apache/commons/lang/builder/ToStringStyle;Ljava/lang/StringBuffer;Ljava/lang/Class;Z)V
    .locals 0

    .line 359
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/lang/builder/ToStringBuilder;-><init>(Ljava/lang/Object;Lorg/apache/commons/lang/builder/ToStringStyle;Ljava/lang/StringBuffer;)V

    const/4 p1, 0x0

    .line 282
    iput-boolean p1, p0, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->appendTransients:Z

    const/4 p1, 0x0

    .line 287
    iput-object p1, p0, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->upToClass:Ljava/lang/Class;

    .line 360
    invoke-virtual {p0, p4}, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->setUpToClass(Ljava/lang/Class;)V

    .line 361
    invoke-virtual {p0, p5}, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->setAppendTransients(Z)V

    return-void
.end method

.method static getRegistry()Ljava/util/Set;
    .locals 1

    .line 130
    sget-object v0, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->registry:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method static isRegistered(Ljava/lang/Object;)Z
    .locals 1

    .line 141
    invoke-static {}, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->getRegistry()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static register(Ljava/lang/Object;)V
    .locals 1

    .line 151
    invoke-static {}, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->getRegistry()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 171
    invoke-static {p0, v0, v1, v0}, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->toString(Ljava/lang/Object;Lorg/apache/commons/lang/builder/ToStringStyle;ZLjava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toString(Ljava/lang/Object;Lorg/apache/commons/lang/builder/ToStringStyle;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 197
    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->toString(Ljava/lang/Object;Lorg/apache/commons/lang/builder/ToStringStyle;ZLjava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toString(Ljava/lang/Object;Lorg/apache/commons/lang/builder/ToStringStyle;Z)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 227
    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->toString(Ljava/lang/Object;Lorg/apache/commons/lang/builder/ToStringStyle;ZLjava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toString(Ljava/lang/Object;Lorg/apache/commons/lang/builder/ToStringStyle;ZLjava/lang/Class;)Ljava/lang/String;
    .locals 7

    .line 265
    new-instance v6, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;

    const/4 v3, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;-><init>(Ljava/lang/Object;Lorg/apache/commons/lang/builder/ToStringStyle;Ljava/lang/StringBuffer;Ljava/lang/Class;Z)V

    invoke-virtual {v6}, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static unregister(Ljava/lang/Object;)V
    .locals 1

    .line 276
    invoke-static {}, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->getRegistry()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method protected accept(Ljava/lang/reflect/Field;)Z
    .locals 2

    .line 375
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x24

    .line 376
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->isAppendTransients()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result p1

    invoke-static {p1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected appendFieldsIn(Ljava/lang/Class;)V
    .locals 5

    .line 392
    invoke-virtual {p0}, Lorg/apache/commons/lang/builder/ToStringBuilder;->getObject()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 395
    invoke-virtual {p0}, Lorg/apache/commons/lang/builder/ToStringBuilder;->getObject()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/builder/ToStringBuilder;->appendAsObjectToString(Ljava/lang/Object;)Lorg/apache/commons/lang/builder/ToStringBuilder;

    return-void

    .line 399
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->registerObject()V

    .line 400
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 401
    invoke-virtual {p0}, Lorg/apache/commons/lang/builder/ToStringBuilder;->getObject()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->reflectionAppendArray(Ljava/lang/Object;)Lorg/apache/commons/lang/builder/ToStringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 438
    invoke-virtual {p0}, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->unregisterObject()V

    return-void

    .line 404
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object p1

    const/4 v0, 0x1

    .line 405
    invoke-static {p1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible([Ljava/lang/reflect/AccessibleObject;Z)V

    const/4 v0, 0x0

    .line 406
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_4

    .line 407
    aget-object v1, p1, v0

    .line 408
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    .line 409
    invoke-virtual {p0, v1}, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->accept(Ljava/lang/reflect/Field;)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v3, :cond_3

    .line 412
    :try_start_2
    invoke-virtual {p0, v1}, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->getValue(Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v3

    .line 413
    invoke-static {v3}, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->isRegistered(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-nez v1, :cond_2

    .line 416
    invoke-virtual {p0}, Lorg/apache/commons/lang/builder/ToStringBuilder;->getStyle()Lorg/apache/commons/lang/builder/ToStringStyle;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/lang/builder/ToStringBuilder;->getStringBuffer()Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v1, v4, v2}, Lorg/apache/commons/lang/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 417
    invoke-virtual {p0, v3}, Lorg/apache/commons/lang/builder/ToStringBuilder;->appendAsObjectToString(Ljava/lang/Object;)Lorg/apache/commons/lang/builder/ToStringBuilder;
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 424
    :cond_2
    :try_start_3
    invoke-virtual {p0}, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->registerObject()V

    .line 425
    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/lang/builder/ToStringBuilder;->append(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/commons/lang/builder/ToStringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 427
    :try_start_4
    invoke-virtual {p0}, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->unregisterObject()V

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->unregisterObject()V

    throw p1
    :try_end_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catch_0
    move-exception p1

    .line 433
    :try_start_5
    new-instance v0, Ljava/lang/InternalError;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Unexpected IllegalAccessException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 438
    :cond_4
    invoke-virtual {p0}, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->unregisterObject()V

    return-void

    :catchall_1
    move-exception p1

    invoke-virtual {p0}, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->unregisterObject()V

    throw p1
.end method

.method public getUpToClass()Ljava/lang/Class;
    .locals 1

    .line 448
    iget-object v0, p0, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->upToClass:Ljava/lang/Class;

    return-object v0
.end method

.method protected getValue(Ljava/lang/reflect/Field;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 459
    invoke-virtual {p0}, Lorg/apache/commons/lang/builder/ToStringBuilder;->getObject()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public isAppendTransients()Z
    .locals 1

    .line 468
    iget-boolean v0, p0, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->appendTransients:Z

    return v0
.end method

.method public reflectionAppendArray(Ljava/lang/Object;)Lorg/apache/commons/lang/builder/ToStringBuilder;
    .locals 3

    .line 479
    invoke-virtual {p0}, Lorg/apache/commons/lang/builder/ToStringBuilder;->getStyle()Lorg/apache/commons/lang/builder/ToStringStyle;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/lang/builder/ToStringBuilder;->getStringBuffer()Ljava/lang/StringBuffer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lorg/apache/commons/lang/builder/ToStringStyle;->reflectionAppendArrayDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method registerObject()V
    .locals 1

    .line 488
    invoke-virtual {p0}, Lorg/apache/commons/lang/builder/ToStringBuilder;->getObject()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public setAppendTransients(Z)V
    .locals 0

    .line 497
    iput-boolean p1, p0, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->appendTransients:Z

    return-void
.end method

.method public setUpToClass(Ljava/lang/Class;)V
    .locals 0

    .line 506
    iput-object p1, p0, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->upToClass:Ljava/lang/Class;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 515
    invoke-virtual {p0}, Lorg/apache/commons/lang/builder/ToStringBuilder;->getObject()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 516
    invoke-virtual {p0}, Lorg/apache/commons/lang/builder/ToStringBuilder;->getStyle()Lorg/apache/commons/lang/builder/ToStringStyle;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang/builder/ToStringStyle;->getNullText()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 518
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/lang/builder/ToStringBuilder;->getObject()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 519
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->appendFieldsIn(Ljava/lang/Class;)V

    .line 520
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->getUpToClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 521
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 522
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->appendFieldsIn(Ljava/lang/Class;)V

    goto :goto_0

    .line 524
    :cond_1
    invoke-super {p0}, Lorg/apache/commons/lang/builder/ToStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method unregisterObject()V
    .locals 1

    .line 532
    invoke-virtual {p0}, Lorg/apache/commons/lang/builder/ToStringBuilder;->getObject()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang/builder/ReflectionToStringBuilder;->unregister(Ljava/lang/Object;)V

    return-void
.end method
