.class public abstract Lorg/apache/ldap/server/interceptor/BaseInterceptor;
.super Ljava/lang/Object;
.source "BaseInterceptor.java"

# interfaces
.implements Lorg/apache/ldap/server/interceptor/Interceptor;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPrincipal(Lorg/apache/ldap/server/invocation/Invocation;)Lorg/apache/ldap/server/authn/LdapPrincipal;
    .locals 0

    .line 62
    invoke-virtual {p0}, Lorg/apache/ldap/server/invocation/Invocation;->getContextStack()Ljava/util/Stack;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/ldap/server/jndi/ServerContext;

    .line 63
    invoke-virtual {p0}, Lorg/apache/ldap/server/jndi/ServerContext;->getPrincipal()Lorg/apache/ldap/server/authn/LdapPrincipal;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected process(Lorg/apache/ldap/server/interceptor/NextInterceptor;Lorg/apache/ldap/server/invocation/Add;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 161
    invoke-interface {p1, p2}, Lorg/apache/ldap/server/interceptor/NextInterceptor;->process(Lorg/apache/ldap/server/invocation/Invocation;)V

    return-void
.end method

.method protected process(Lorg/apache/ldap/server/interceptor/NextInterceptor;Lorg/apache/ldap/server/invocation/Delete;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 167
    invoke-interface {p1, p2}, Lorg/apache/ldap/server/interceptor/NextInterceptor;->process(Lorg/apache/ldap/server/invocation/Invocation;)V

    return-void
.end method

.method protected process(Lorg/apache/ldap/server/interceptor/NextInterceptor;Lorg/apache/ldap/server/invocation/GetMatchedDN;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 173
    invoke-interface {p1, p2}, Lorg/apache/ldap/server/interceptor/NextInterceptor;->process(Lorg/apache/ldap/server/invocation/Invocation;)V

    return-void
.end method

.method protected process(Lorg/apache/ldap/server/interceptor/NextInterceptor;Lorg/apache/ldap/server/invocation/GetSuffix;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 179
    invoke-interface {p1, p2}, Lorg/apache/ldap/server/interceptor/NextInterceptor;->process(Lorg/apache/ldap/server/invocation/Invocation;)V

    return-void
.end method

.method protected process(Lorg/apache/ldap/server/interceptor/NextInterceptor;Lorg/apache/ldap/server/invocation/HasEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 185
    invoke-interface {p1, p2}, Lorg/apache/ldap/server/interceptor/NextInterceptor;->process(Lorg/apache/ldap/server/invocation/Invocation;)V

    return-void
.end method

.method public process(Lorg/apache/ldap/server/interceptor/NextInterceptor;Lorg/apache/ldap/server/invocation/Invocation;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 83
    instance-of v0, p2, Lorg/apache/ldap/server/invocation/Add;

    if-eqz v0, :cond_0

    .line 85
    check-cast p2, Lorg/apache/ldap/server/invocation/Add;

    invoke-virtual {p0, p1, p2}, Lorg/apache/ldap/server/interceptor/BaseInterceptor;->process(Lorg/apache/ldap/server/interceptor/NextInterceptor;Lorg/apache/ldap/server/invocation/Add;)V

    goto/16 :goto_0

    .line 87
    :cond_0
    instance-of v0, p2, Lorg/apache/ldap/server/invocation/Delete;

    if-eqz v0, :cond_1

    .line 89
    check-cast p2, Lorg/apache/ldap/server/invocation/Delete;

    invoke-virtual {p0, p1, p2}, Lorg/apache/ldap/server/interceptor/BaseInterceptor;->process(Lorg/apache/ldap/server/interceptor/NextInterceptor;Lorg/apache/ldap/server/invocation/Delete;)V

    goto/16 :goto_0

    .line 91
    :cond_1
    instance-of v0, p2, Lorg/apache/ldap/server/invocation/GetMatchedDN;

    if-eqz v0, :cond_2

    .line 93
    check-cast p2, Lorg/apache/ldap/server/invocation/GetMatchedDN;

    invoke-virtual {p0, p1, p2}, Lorg/apache/ldap/server/interceptor/BaseInterceptor;->process(Lorg/apache/ldap/server/interceptor/NextInterceptor;Lorg/apache/ldap/server/invocation/GetMatchedDN;)V

    goto/16 :goto_0

    .line 95
    :cond_2
    instance-of v0, p2, Lorg/apache/ldap/server/invocation/GetSuffix;

    if-eqz v0, :cond_3

    .line 97
    check-cast p2, Lorg/apache/ldap/server/invocation/GetSuffix;

    invoke-virtual {p0, p1, p2}, Lorg/apache/ldap/server/interceptor/BaseInterceptor;->process(Lorg/apache/ldap/server/interceptor/NextInterceptor;Lorg/apache/ldap/server/invocation/GetSuffix;)V

    goto/16 :goto_0

    .line 99
    :cond_3
    instance-of v0, p2, Lorg/apache/ldap/server/invocation/HasEntry;

    if-eqz v0, :cond_4

    .line 101
    check-cast p2, Lorg/apache/ldap/server/invocation/HasEntry;

    invoke-virtual {p0, p1, p2}, Lorg/apache/ldap/server/interceptor/BaseInterceptor;->process(Lorg/apache/ldap/server/interceptor/NextInterceptor;Lorg/apache/ldap/server/invocation/HasEntry;)V

    goto/16 :goto_0

    .line 103
    :cond_4
    instance-of v0, p2, Lorg/apache/ldap/server/invocation/IsSuffix;

    if-eqz v0, :cond_5

    .line 105
    check-cast p2, Lorg/apache/ldap/server/invocation/IsSuffix;

    invoke-virtual {p0, p1, p2}, Lorg/apache/ldap/server/interceptor/BaseInterceptor;->process(Lorg/apache/ldap/server/interceptor/NextInterceptor;Lorg/apache/ldap/server/invocation/IsSuffix;)V

    goto/16 :goto_0

    .line 107
    :cond_5
    instance-of v0, p2, Lorg/apache/ldap/server/invocation/List;

    if-eqz v0, :cond_6

    .line 109
    check-cast p2, Lorg/apache/ldap/server/invocation/List;

    invoke-virtual {p0, p1, p2}, Lorg/apache/ldap/server/interceptor/BaseInterceptor;->process(Lorg/apache/ldap/server/interceptor/NextInterceptor;Lorg/apache/ldap/server/invocation/List;)V

    goto :goto_0

    .line 111
    :cond_6
    instance-of v0, p2, Lorg/apache/ldap/server/invocation/ListSuffixes;

    if-eqz v0, :cond_7

    .line 113
    check-cast p2, Lorg/apache/ldap/server/invocation/ListSuffixes;

    invoke-virtual {p0, p1, p2}, Lorg/apache/ldap/server/interceptor/BaseInterceptor;->process(Lorg/apache/ldap/server/interceptor/NextInterceptor;Lorg/apache/ldap/server/invocation/ListSuffixes;)V

    goto :goto_0

    .line 115
    :cond_7
    instance-of v0, p2, Lorg/apache/ldap/server/invocation/Lookup;

    if-eqz v0, :cond_8

    .line 117
    check-cast p2, Lorg/apache/ldap/server/invocation/Lookup;

    invoke-virtual {p0, p1, p2}, Lorg/apache/ldap/server/interceptor/BaseInterceptor;->process(Lorg/apache/ldap/server/interceptor/NextInterceptor;Lorg/apache/ldap/server/invocation/Lookup;)V

    goto :goto_0

    .line 119
    :cond_8
    instance-of v0, p2, Lorg/apache/ldap/server/invocation/LookupWithAttrIds;

    if-eqz v0, :cond_9

    .line 121
    check-cast p2, Lorg/apache/ldap/server/invocation/LookupWithAttrIds;

    invoke-virtual {p0, p1, p2}, Lorg/apache/ldap/server/interceptor/BaseInterceptor;->process(Lorg/apache/ldap/server/interceptor/NextInterceptor;Lorg/apache/ldap/server/invocation/LookupWithAttrIds;)V

    goto :goto_0

    .line 123
    :cond_9
    instance-of v0, p2, Lorg/apache/ldap/server/invocation/Modify;

    if-eqz v0, :cond_a

    .line 125
    check-cast p2, Lorg/apache/ldap/server/invocation/Modify;

    invoke-virtual {p0, p1, p2}, Lorg/apache/ldap/server/interceptor/BaseInterceptor;->process(Lorg/apache/ldap/server/interceptor/NextInterceptor;Lorg/apache/ldap/server/invocation/Modify;)V

    goto :goto_0

    .line 127
    :cond_a
    instance-of v0, p2, Lorg/apache/ldap/server/invocation/ModifyMany;

    if-eqz v0, :cond_b

    .line 129
    check-cast p2, Lorg/apache/ldap/server/invocation/ModifyMany;

    invoke-virtual {p0, p1, p2}, Lorg/apache/ldap/server/interceptor/BaseInterceptor;->process(Lorg/apache/ldap/server/interceptor/NextInterceptor;Lorg/apache/ldap/server/invocation/ModifyMany;)V

    goto :goto_0

    .line 131
    :cond_b
    instance-of v0, p2, Lorg/apache/ldap/server/invocation/ModifyRN;

    if-eqz v0, :cond_c

    .line 133
    check-cast p2, Lorg/apache/ldap/server/invocation/ModifyRN;

    invoke-virtual {p0, p1, p2}, Lorg/apache/ldap/server/interceptor/BaseInterceptor;->process(Lorg/apache/ldap/server/interceptor/NextInterceptor;Lorg/apache/ldap/server/invocation/ModifyRN;)V

    goto :goto_0

    .line 135
    :cond_c
    instance-of v0, p2, Lorg/apache/ldap/server/invocation/Move;

    if-eqz v0, :cond_d

    .line 137
    check-cast p2, Lorg/apache/ldap/server/invocation/Move;

    invoke-virtual {p0, p1, p2}, Lorg/apache/ldap/server/interceptor/BaseInterceptor;->process(Lorg/apache/ldap/server/interceptor/NextInterceptor;Lorg/apache/ldap/server/invocation/Move;)V

    goto :goto_0

    .line 139
    :cond_d
    instance-of v0, p2, Lorg/apache/ldap/server/invocation/MoveAndModifyRN;

    if-eqz v0, :cond_e

    .line 141
    check-cast p2, Lorg/apache/ldap/server/invocation/MoveAndModifyRN;

    invoke-virtual {p0, p1, p2}, Lorg/apache/ldap/server/interceptor/BaseInterceptor;->process(Lorg/apache/ldap/server/interceptor/NextInterceptor;Lorg/apache/ldap/server/invocation/MoveAndModifyRN;)V

    goto :goto_0

    .line 143
    :cond_e
    instance-of v0, p2, Lorg/apache/ldap/server/invocation/Search;

    if-eqz v0, :cond_f

    .line 145
    check-cast p2, Lorg/apache/ldap/server/invocation/Search;

    invoke-virtual {p0, p1, p2}, Lorg/apache/ldap/server/interceptor/BaseInterceptor;->process(Lorg/apache/ldap/server/interceptor/NextInterceptor;Lorg/apache/ldap/server/invocation/Search;)V

    :goto_0
    return-void

    .line 149
    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Unknown call type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected process(Lorg/apache/ldap/server/interceptor/NextInterceptor;Lorg/apache/ldap/server/invocation/IsSuffix;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 191
    invoke-interface {p1, p2}, Lorg/apache/ldap/server/interceptor/NextInterceptor;->process(Lorg/apache/ldap/server/invocation/Invocation;)V

    return-void
.end method

.method protected process(Lorg/apache/ldap/server/interceptor/NextInterceptor;Lorg/apache/ldap/server/invocation/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 197
    invoke-interface {p1, p2}, Lorg/apache/ldap/server/interceptor/NextInterceptor;->process(Lorg/apache/ldap/server/invocation/Invocation;)V

    return-void
.end method

.method protected process(Lorg/apache/ldap/server/interceptor/NextInterceptor;Lorg/apache/ldap/server/invocation/ListSuffixes;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 203
    invoke-interface {p1, p2}, Lorg/apache/ldap/server/interceptor/NextInterceptor;->process(Lorg/apache/ldap/server/invocation/Invocation;)V

    return-void
.end method

.method protected process(Lorg/apache/ldap/server/interceptor/NextInterceptor;Lorg/apache/ldap/server/invocation/Lookup;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 209
    invoke-interface {p1, p2}, Lorg/apache/ldap/server/interceptor/NextInterceptor;->process(Lorg/apache/ldap/server/invocation/Invocation;)V

    return-void
.end method

.method protected process(Lorg/apache/ldap/server/interceptor/NextInterceptor;Lorg/apache/ldap/server/invocation/LookupWithAttrIds;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 215
    invoke-interface {p1, p2}, Lorg/apache/ldap/server/interceptor/NextInterceptor;->process(Lorg/apache/ldap/server/invocation/Invocation;)V

    return-void
.end method

.method protected process(Lorg/apache/ldap/server/interceptor/NextInterceptor;Lorg/apache/ldap/server/invocation/Modify;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 221
    invoke-interface {p1, p2}, Lorg/apache/ldap/server/interceptor/NextInterceptor;->process(Lorg/apache/ldap/server/invocation/Invocation;)V

    return-void
.end method

.method protected process(Lorg/apache/ldap/server/interceptor/NextInterceptor;Lorg/apache/ldap/server/invocation/ModifyMany;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 227
    invoke-interface {p1, p2}, Lorg/apache/ldap/server/interceptor/NextInterceptor;->process(Lorg/apache/ldap/server/invocation/Invocation;)V

    return-void
.end method

.method protected process(Lorg/apache/ldap/server/interceptor/NextInterceptor;Lorg/apache/ldap/server/invocation/ModifyRN;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 233
    invoke-interface {p1, p2}, Lorg/apache/ldap/server/interceptor/NextInterceptor;->process(Lorg/apache/ldap/server/invocation/Invocation;)V

    return-void
.end method

.method protected process(Lorg/apache/ldap/server/interceptor/NextInterceptor;Lorg/apache/ldap/server/invocation/Move;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 239
    invoke-interface {p1, p2}, Lorg/apache/ldap/server/interceptor/NextInterceptor;->process(Lorg/apache/ldap/server/invocation/Invocation;)V

    return-void
.end method

.method protected process(Lorg/apache/ldap/server/interceptor/NextInterceptor;Lorg/apache/ldap/server/invocation/MoveAndModifyRN;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 245
    invoke-interface {p1, p2}, Lorg/apache/ldap/server/interceptor/NextInterceptor;->process(Lorg/apache/ldap/server/invocation/Invocation;)V

    return-void
.end method

.method protected process(Lorg/apache/ldap/server/interceptor/NextInterceptor;Lorg/apache/ldap/server/invocation/Search;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 251
    invoke-interface {p1, p2}, Lorg/apache/ldap/server/interceptor/NextInterceptor;->process(Lorg/apache/ldap/server/invocation/Invocation;)V

    return-void
.end method
