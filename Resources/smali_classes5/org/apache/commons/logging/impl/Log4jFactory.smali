.class public final Lorg/apache/commons/logging/impl/Log4jFactory;
.super Lorg/apache/commons/logging/LogFactory;
.source "Log4jFactory.java"


# instance fields
.field private attributes:Ljava/util/Hashtable;

.field private instances:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 81
    invoke-direct {p0}, Lorg/apache/commons/logging/LogFactory;-><init>()V

    .line 87
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/logging/impl/Log4jFactory;->attributes:Ljava/util/Hashtable;

    .line 90
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/logging/impl/Log4jFactory;->instances:Ljava/util/Hashtable;

    return-void
.end method


# virtual methods
.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 101
    iget-object v0, p0, Lorg/apache/commons/logging/impl/Log4jFactory;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getAttributeNames()[Ljava/lang/String;
    .locals 5

    .line 111
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 112
    iget-object v1, p0, Lorg/apache/commons/logging/impl/Log4jFactory;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 113
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_1

    .line 116
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    new-array v3, v2, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_1
    if-lt v1, v2, :cond_0

    return-object v3

    .line 118
    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 114
    :cond_1
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getInstance(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/logging/LogConfigurationException;
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lorg/apache/commons/logging/impl/Log4jFactory;->instances:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/logging/Log;

    if-eqz v0, :cond_0

    return-object v0

    .line 140
    :cond_0
    new-instance v0, Lorg/apache/commons/logging/impl/Log4JCategoryLog;

    invoke-static {p1}, Lorg/apache/log4j/Category;->getInstance(Ljava/lang/Class;)Lorg/apache/log4j/Category;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/logging/impl/Log4JCategoryLog;-><init>(Lorg/apache/log4j/Category;)V

    .line 141
    iget-object v1, p0, Lorg/apache/commons/logging/impl/Log4jFactory;->instances:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getInstance(Ljava/lang/String;)Lorg/apache/commons/logging/Log;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/logging/LogConfigurationException;
        }
    .end annotation

    .line 149
    iget-object v0, p0, Lorg/apache/commons/logging/impl/Log4jFactory;->instances:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/logging/Log;

    if-eqz v0, :cond_0

    return-object v0

    .line 153
    :cond_0
    new-instance v0, Lorg/apache/commons/logging/impl/Log4JCategoryLog;

    invoke-static {p1}, Lorg/apache/log4j/Category;->getInstance(Ljava/lang/String;)Lorg/apache/log4j/Category;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/logging/impl/Log4JCategoryLog;-><init>(Lorg/apache/log4j/Category;)V

    .line 154
    iget-object v1, p0, Lorg/apache/commons/logging/impl/Log4jFactory;->instances:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public release()V
    .locals 1

    .line 168
    iget-object v0, p0, Lorg/apache/commons/logging/impl/Log4jFactory;->instances:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    return-void
.end method

.method public removeAttribute(Ljava/lang/String;)V
    .locals 1

    .line 181
    iget-object v0, p0, Lorg/apache/commons/logging/impl/Log4jFactory;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    if-nez p2, :cond_0

    .line 196
    iget-object p2, p0, Lorg/apache/commons/logging/impl/Log4jFactory;->attributes:Ljava/util/Hashtable;

    invoke-virtual {p2, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 198
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/logging/impl/Log4jFactory;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method
