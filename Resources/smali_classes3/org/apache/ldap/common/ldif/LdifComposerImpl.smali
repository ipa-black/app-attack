.class public Lorg/apache/ldap/common/ldif/LdifComposerImpl;
.super Ljava/lang/Object;
.source "LdifComposerImpl.java"

# interfaces
.implements Lorg/apache/ldap/common/ldif/LdifComposer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public base64encode([B)[C
    .locals 0

    .line 128
    invoke-static {p1}, Lorg/apache/ldap/common/util/Base64;->encode([B)[C

    move-result-object p1

    return-object p1
.end method

.method public compose(Lorg/apache/ldap/common/util/MultiMap;)Ljava/lang/String;
    .locals 10

    .line 62
    invoke-interface {p1}, Lorg/apache/ldap/common/util/MultiMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 65
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 66
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 68
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 70
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 71
    invoke-interface {p1, v3}, Lorg/apache/ldap/common/util/MultiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    .line 72
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 74
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    .line 78
    :cond_1
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    const/4 v6, 0x1

    const-string v7, ": "

    const/16 v8, 0x20

    const/16 v9, 0x3a

    if-ne v4, v6, :cond_3

    .line 80
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->print(C)V

    .line 82
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 84
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 86
    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 87
    check-cast v3, [B

    check-cast v3, [B

    invoke-virtual {p0, v3}, Lorg/apache/ldap/common/ldif/LdifComposerImpl;->base64encode([B)[C

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println([C)V

    goto :goto_0

    .line 91
    :cond_2
    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->print(C)V

    .line 92
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_0

    .line 97
    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 99
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->print(C)V

    .line 101
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 103
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->isArray()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 105
    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 106
    check-cast v4, [B

    check-cast v4, [B

    invoke-virtual {p0, v4}, Lorg/apache/ldap/common/ldif/LdifComposerImpl;->base64encode([B)[C

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println([C)V

    goto :goto_1

    .line 110
    :cond_4
    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->print(C)V

    .line 111
    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_1

    .line 116
    :cond_5
    invoke-virtual {v1}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
