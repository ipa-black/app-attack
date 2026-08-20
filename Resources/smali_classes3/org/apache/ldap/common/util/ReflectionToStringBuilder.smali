.class public Lorg/apache/ldap/common/util/ReflectionToStringBuilder;
.super Lorg/apache/ldap/common/util/ToStringBuilder;
.source "ReflectionToStringBuilder.java"


# static fields
.field private static registry:Ljava/lang/ThreadLocal;


# instance fields
.field private appendStatics:Z

.field private appendTransients:Z

.field private upToClass:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 101
    new-instance v0, Lorg/apache/ldap/common/util/ReflectionToStringBuilder$1;

    invoke-direct {v0}, Lorg/apache/ldap/common/util/ReflectionToStringBuilder$1;-><init>()V

    sput-object v0, Lorg/apache/ldap/common/util/ReflectionToStringBuilder;->registry:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 452
    invoke-direct {p0, p1}, Lorg/apache/ldap/common/util/ToStringBuilder;-><init>(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 424
    iput-boolean p1, p0, Lorg/apache/ldap/common/util/ReflectionToStringBuilder;->appendStatics:Z

    .line 429
    iput-boolean p1, p0, Lorg/apache/ldap/common/util/ReflectionToStringBuilder;->appendTransients:Z

    const/4 p1, 0x0

    .line 434
    iput-object p1, p0, Lorg/apache/ldap/common/util/ReflectionToStringBuilder;->upToClass:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lorg/apache/ldap/common/util/ToStringStyle;)V
    .locals 0

    .line 474
    invoke-direct {p0, p1, p2}, Lorg/apache/ldap/common/util/ToStringBuilder;-><init>(Ljava/lang/Object;Lorg/apache/ldap/common/util/ToStringStyle;)V

    const/4 p1, 0x0

    .line 424
    iput-boolean p1, p0, Lorg/apache/ldap/common/util/ReflectionToStringBuilder;->appendStatics:Z

    .line 429
    iput-boolean p1, p0, Lorg/apache/ldap/common/util/ReflectionToStringBuilder;->appendTransients:Z

    const/4 p1, 0x0

    .line 434
    iput-object p1, p0, Lorg/apache/ldap/common/util/ReflectionToStringBuilder;->upToClass:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lorg/apache/ldap/common/util/ToStringStyle;Ljava/lang/StringBuffer;)V
    .locals 0

    .line 501
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/ldap/common/util/ToStringBuilder;-><init>(Ljava/lang/Object;Lorg/apache/ldap/common/util/ToStringStyle;Ljava/lang/StringBuffer;)V

    const/4 p1, 0x0

    .line 424
    iput-boolean p1, p0, Lorg/apache/ldap/common/util/ReflectionToStringBuilder;->appendStatics:Z

    .line 429
    iput-boolean p1, p0, Lorg/apache/ldap/common/util/ReflectionToStringBuilder;->appendTransients:Z

    const/4 p1, 0x0

    .line 434
    iput-object p1, p0, Lorg/apache/ldap/common/util/ReflectionToStringBuilder;->upToClass:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lorg/apache/ldap/common/util/ToStringStyle;Ljava/lang/StringBuffer;Ljava/lang/Class;Z)V
    .locals 0

    .line 524
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/ldap/common/util/ToStringBuilder;-><init>(Ljava/lang/Object;Lorg/apache/ldap/common/util/ToStringStyle;Ljava/lang/StringBuffer;)V

    const/4 p1, 0x0

    .line 424
    iput-boolean p1, p0, Lorg/apache/ldap/common/util/ReflectionToStringBuilder;->appendStatics:Z

    .line 429
    iput-boolean p1, p0, Lorg/apache/ldap/common/util/ReflectionToStringBuilder;->appendTransients:Z

    const/4 p1, 0x0

    .line 434
    iput-object p1, p0, Lorg/apache/ldap/common/util/ReflectionToStringBuilder;->upToClass:Ljava/lang/Class;

    .line 525
    invoke-virtual {p0, p4}, Lorg/apache/ldap/common/util/ReflectionToStringBuilder;->setUpToClass(Ljava/lang/Class;)V

    .line 526
    invoke-virtual {p0, p5}, Lorg/apache/ldap/common/util/ReflectionToStringBuilder;->setAppendTransients(Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lorg/apache/ldap/common/util/ToStringStyle;Ljava/lang/StringBuffer;Ljava/lang/Class;ZZ)V
    .locals 0

    .line 548
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/ldap/common/util/ToStringBuilder;-><init>(Ljava/lang/Object;Lorg/apache/ldap/common/util/ToStringStyle;Ljava/lang/StringBuffer;)V

    const/4 p1, 0x0

    .line 424
    iput-boolean p1, p0, Lorg/apache/ldap/common/util/ReflectionToStringBuilder;->appendStatics:Z

    .line 429
    iput-boolean p1, p0, Lorg/apache/ldap/common/util/ReflectionToStringBuilder;->appendTransients:Z

    const/4 p1, 0x0

    .line 434
    iput-object p1, p0, Lorg/apache/ldap/common/util/ReflectionToStringBuilder;->upToClass:Ljava/lang/Class;

    .line 549
    invoke-virtual {p0, p4}, Lorg/apache/ldap/common/util/ReflectionToStringBuilder;->setUpToClass(Ljava/lang/Class;)V

    .line 550
    invoke-virtual {p0, p5}, Lorg/apache/ldap/common/util/ReflectionToStringBuilder;->setAppendTransients(Z)V

    .line 551
    invoke-virtual {p0, p6}, Lorg/apache/ldap/common/util/ReflectionToStringBuilder;->setAppendStatics(Z)V

    return-void
.end method

.method static getRegistry()Ljava/util/Set;
    .locals 1

    .line 118
    sget-object v0, Lorg/apache/ldap/common/util/ReflectionToStringBuilder;->registry:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method static isRegistered(Ljava/lang/Object;)Z
    .locals 1

    .line 133
    invoke-static {}, Lorg/apache/ldap/common/util/ReflectionToStringBuilder;->getRegistry()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static register(Ljava/lang/Object;)V
    .locals 1

    .line 146
    invoke-static {}, Lorg/apache/ldap/common/util/ReflectionToStringBuilder;->getRegistry()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 173
    invoke-static {p0, v0, v1, v1, v0}, Lorg/apache/ldap/common/util/ReflectionToStringBuilder;->toString(Ljava/lang/Object;Lorg/apache/ldap/common/util/ToStringStyle;ZZLjava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toString(Ljava/lang/Object;Lorg/apache/ldap/common/util/ToStringStyle;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 208
    invoke-static {p0, p1, v0, v0, v1}, Lorg/apache/ldap/common/util/ReflectionToStringBuilder;->toString(Ljava/lang/Object;Lorg/apache/ldap/common/util/ToStringStyle;ZZLjava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toString(Ljava/lang/Object;Lorg/apache/ldap/common/util/ToStringStyle;Z)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 250
    invoke-static {p0, p1, p2, v0, v1}, Lorg/apache/ldap/common/util/ReflectionToStringBuilder;->toString(Ljava/lang/Object;Lorg/apache/ldap/common/util/ToStringStyle;ZZLjava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toString(Ljava/lang/Object;Lorg/apache/ldap/common/util/ToStringStyle;ZLjava/lang/Class;)Ljava/lang/String;
    .locals 7

    .line 402
    new-instance v6, Lorg/apache/ldap/common/util/ReflectionToStringBuilder;

    const/4 v3, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/ldap/common/util/ReflectionToStringBuilder;-><init>(Ljava/lang/Object;Lorg/apache/ldap/common/util/ToStringStyle;Ljava/lang/StringBuffer;Ljava/lang/Class;Z)V

    invoke-virtual {v6}, Lorg/apache/ldap/common/util/ReflectionToStringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toString(Ljava/lang/Object;Lorg/apache/ldap/common/util/ToStringStyle;ZZ)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 299
    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/ldap/common/util/ReflectionToStringBuilder;->toString(Ljava/lang/Object;Lorg/apache/ldap/common/util/ToStringStyle;ZZLjava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toString(Ljava/lang/Object;Lorg/apache/ldap/common/util/ToStringStyle;ZZLjava/lang/Class;)Ljava/lang/String;
    .locals 8

    .line 352
    new-instance v7, Lorg/apache/ldap/common/util/ReflectionToStringBuilder;

    const/4 v3, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v4, p4

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lorg/apache/ldap/common/util/ReflectionToStringBuilder;-><init>(Ljava/lang/Object;Lorg/apache/ldap/common/util/ToStringStyle;Ljava/lang/StringBuffer;Ljava/lang/Class;ZZ)V

    invoke-virtual {v7}, Lorg/apache/ldap/common/util/ReflectionToStringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static unregister(Ljava/lang/Object;)V
    .locals 1

    .line 418
    invoke-static {}, Lorg/apache/ldap/common/util/ReflectionToStringBuilder;->getRegistry()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method protected accept(Ljava/lang/reflect/Field;)Z
    .locals 3

    .line 569
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 573
    :cond_0
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/ldap/common/util/ReflectionToStringBuilder;->isAppendTransients()Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    .line 577
    :cond_1
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result p1

    invoke-static {p1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lorg/apache/ldap/common/util/ReflectionToStringBuilder;->isAppendStatics()Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method protected appendFieldsIn(Ljava/lang/Class;)V
    .locals 5

    .line 600
    invoke-virtual {p0}, Lorg/apache/ldap/common/util/ReflectionToStringBuilder;->getObject()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/ldap/common/util/ReflectionToStringBuilder;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 605
    invoke-virtual {p0}, Lorg/apache/ldap/common/util/ReflectionToStringBuilder;->getObject()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/ldap/common/util/ReflectionToStringBuilder;->appendAsObjectToString(Ljava/lang/Object;)Lorg/apache/ldap/common/util/ToStringBuilder;

    return-void

    .line 609
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ldap/common/util/ReflectionToStringBuilder;->registerObject()V

    .line 610
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 611
    invoke-virtual {p0}, Lorg/apache/ldap/common/util/ReflectionToStringBuilder;->getObject()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/ldap/common/util/ReflectionToStringBuilder;->reflectionAppendArray(Ljava/lang/Object;)Lorg/apache/ldap/common/util/ToStringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 652
    invoke-virtual {p0}, Lorg/apache/ldap/common/util/ReflectionToStringBuilder;->unregisterObject()V

    return-void

    .line 614
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object p1

    const/4 v0, 0x1

    .line 615
    invoke-static {p1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible([Ljava/lang/reflect/AccessibleObject;Z)V

    const/4 v0, 0x0

    .line 616
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_4

    .line 617
    aget-object v1, p1, v0

    .line 618
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    .line 619
    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/util/ReflectionToStringBuilder;->accept(Ljava/lang/reflect/Field;)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v3, :cond_3

    .line 623
    :try_start_2
    invoke-virtual {p0, v1}, Lorg/apache/ldap/common/util/ReflectionToStringBuilder;->getValue(Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v3

    .line 624
    invoke-static {v3}, Lorg/apache/ldap/common/util/ReflectionToStringBuilder;->isRegistered(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-nez v1, :cond_2

    .line 628
    invoke-virtual {p0}, Lorg/apache/ldap/common/util/ReflectionToStringBuilder;->getStyle()Lorg/apache/ldap/common/util/ToStringStyle;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/ldap/common/util/ReflectionToStringBuilder;->getStringBuffer()Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v1, v4, v2}, Lorg/apache/ldap/common/util/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 629
    invoke-virtual {p0, v3}, Lorg/apache/ldap/common/util/ReflectionToStringBuilder;->appendAsObjectToString(Ljava/lang/Object;)Lorg/apache/ldap/common/util/ToStringBuilder;
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 636
    :cond_2
    :try_start_3
    invoke-virtual {p0}, Lorg/apache/ldap/common/util/ReflectionToStringBuilder;->registerObject()V

    .line 637
    invoke-virtual {p0, v2, v3}, Lorg/apache/ldap/common/util/ReflectionToStringBuilder;->append(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/ldap/common/util/ToStringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 639
    :try_start_4
    invoke-virtual {p0}, Lorg/apache/ldap/common/util/ReflectionToStringBuilder;->unregisterObject()V

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lorg/apache/ldap/common/util/ReflectionToStringBuilder;->unregisterObject()V

    .line 640
    throw p1
    :try_end_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catch_0
    move-exception p1

    .line 647
    :try_start_5
    new-instance v0, Ljava/lang/InternalError;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Unexpected IllegalAccessException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

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

    .line 652
    :cond_4
    invoke-virtual {p0}, Lorg/apache/ldap/common/util/ReflectionToStringBuilder;->unregisterObject()V

    return-void

    :catchall_1
    move-exception p1

    invoke-virtual {p0}, Lorg/apache/ldap/common/util/ReflectionToStringBuilder;->unregisterObject()V

    .line 653
    throw p1
.end method

.method public getUpToClass()Ljava/lang/Class;
    .locals 1

    .line 664
    iget-object v0, p0, Lorg/apache/ldap/common/util/ReflectionToStringBuilder;->upToClass:Ljava/lang/Class;

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

    .line 684
    invoke-virtual {p0}, Lorg/apache/ldap/common/util/ReflectionToStringBuilder;->getObject()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public isAppendStatics()Z
    .locals 1

    .line 695
    iget-boolean v0, p0, Lorg/apache/ldap/common/util/ReflectionToStringBuilder;->appendStatics:Z

    return v0
.end method

.method public isAppendTransients()Z
    .locals 1

    .line 706
    iget-boolean v0, p0, Lorg/apache/ldap/common/util/ReflectionToStringBuilder;->appendTransients:Z

    return v0
.end method

.method public reflectionAppendArray(Ljava/lang/Object;)Lorg/apache/ldap/common/util/ToStringBuilder;
    .locals 3

    .line 719
    invoke-virtual {p0}, Lorg/apache/ldap/common/util/ReflectionToStringBuilder;->getStyle()Lorg/apache/ldap/common/util/ToStringStyle;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/ldap/common/util/ReflectionToStringBuilder;->getStringBuffer()Ljava/lang/StringBuffer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lorg/apache/ldap/common/util/ToStringStyle;->reflectionAppendArrayDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method registerObject()V
    .locals 1

    .line 730
    invoke-virtual {p0}, Lorg/apache/ldap/common/util/ReflectionToStringBuilder;->getObject()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/ldap/common/util/ReflectionToStringBuilder;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public setAppendStatics(Z)V
    .locals 0

    .line 742
    iput-boolean p1, p0, Lorg/apache/ldap/common/util/ReflectionToStringBuilder;->appendStatics:Z

    return-void
.end method

.method public setAppendTransients(Z)V
    .locals 0

    .line 754
    iput-boolean p1, p0, Lorg/apache/ldap/common/util/ReflectionToStringBuilder;->appendTransients:Z

    return-void
.end method

.method public setUpToClass(Ljava/lang/Class;)V
    .locals 0

    .line 766
    iput-object p1, p0, Lorg/apache/ldap/common/util/ReflectionToStringBuilder;->upToClass:Ljava/lang/Class;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 777
    invoke-virtual {p0}, Lorg/apache/ldap/common/util/ReflectionToStringBuilder;->getObject()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 778
    invoke-virtual {p0}, Lorg/apache/ldap/common/util/ReflectionToStringBuilder;->getStyle()Lorg/apache/ldap/common/util/ToStringStyle;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ldap/common/util/ToStringStyle;->getNullText()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 780
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ldap/common/util/ReflectionToStringBuilder;->getObject()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 781
    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/util/ReflectionToStringBuilder;->appendFieldsIn(Ljava/lang/Class;)V

    .line 782
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/apache/ldap/common/util/ReflectionToStringBuilder;->getUpToClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 783
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 784
    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/util/ReflectionToStringBuilder;->appendFieldsIn(Ljava/lang/Class;)V

    goto :goto_0

    .line 786
    :cond_1
    invoke-super {p0}, Lorg/apache/ldap/common/util/ToStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method unregisterObject()V
    .locals 1

    .line 796
    invoke-virtual {p0}, Lorg/apache/ldap/common/util/ReflectionToStringBuilder;->getObject()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/ldap/common/util/ReflectionToStringBuilder;->unregister(Ljava/lang/Object;)V

    return-void
.end method
