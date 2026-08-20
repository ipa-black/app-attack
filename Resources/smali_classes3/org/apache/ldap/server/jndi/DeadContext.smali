.class public Lorg/apache/ldap/server/jndi/DeadContext;
.super Ljava/lang/Object;
.source "DeadContext.java"

# interfaces
.implements Ljavax/naming/ldap/LdapContext;


# instance fields
.field private final EXCEPTION_MSG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const-string v0, "Context operation unavailable when invoked after Eve provider has been shutdown"

    iput-object v0, p0, Lorg/apache/ldap/server/jndi/DeadContext;->EXCEPTION_MSG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addToEnvironment(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 406
    new-instance p1, Lorg/apache/ldap/common/exception/LdapServiceUnavailableException;

    const-string p2, "Context operation unavailable when invoked after Eve provider has been shutdown"

    sget-object v0, Lorg/apache/ldap/common/message/ResultCodeEnum;->UNAVAILABLE:Lorg/apache/ldap/common/message/ResultCodeEnum;

    invoke-direct {p1, p2, v0}, Lorg/apache/ldap/common/exception/LdapServiceUnavailableException;-><init>(Ljava/lang/String;Lorg/apache/ldap/common/message/ResultCodeEnum;)V

    throw p1
.end method

.method public bind(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 310
    new-instance p1, Lorg/apache/ldap/common/exception/LdapServiceUnavailableException;

    const-string p2, "Context operation unavailable when invoked after Eve provider has been shutdown"

    sget-object v0, Lorg/apache/ldap/common/message/ResultCodeEnum;->UNAVAILABLE:Lorg/apache/ldap/common/message/ResultCodeEnum;

    invoke-direct {p1, p2, v0}, Lorg/apache/ldap/common/exception/LdapServiceUnavailableException;-><init>(Ljava/lang/String;Lorg/apache/ldap/common/message/ResultCodeEnum;)V

    throw p1
.end method

.method public bind(Ljava/lang/String;Ljava/lang/Object;Ljavax/naming/directory/Attributes;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 166
    new-instance p1, Lorg/apache/ldap/common/exception/LdapServiceUnavailableException;

    const-string p2, "Context operation unavailable when invoked after Eve provider has been shutdown"

    sget-object p3, Lorg/apache/ldap/common/message/ResultCodeEnum;->UNAVAILABLE:Lorg/apache/ldap/common/message/ResultCodeEnum;

    invoke-direct {p1, p2, p3}, Lorg/apache/ldap/common/exception/LdapServiceUnavailableException;-><init>(Ljava/lang/String;Lorg/apache/ldap/common/message/ResultCodeEnum;)V

    throw p1
.end method

.method public bind(Ljavax/naming/Name;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 334
    new-instance p1, Lorg/apache/ldap/common/exception/LdapServiceUnavailableException;

    const-string p2, "Context operation unavailable when invoked after Eve provider has been shutdown"

    sget-object v0, Lorg/apache/ldap/common/message/ResultCodeEnum;->UNAVAILABLE:Lorg/apache/ldap/common/message/ResultCodeEnum;

    invoke-direct {p1, p2, v0}, Lorg/apache/ldap/common/exception/LdapServiceUnavailableException;-><init>(Ljava/lang/String;Lorg/apache/ldap/common/message/ResultCodeEnum;)V

    throw p1
.end method

.method public bind(Ljavax/naming/Name;Ljava/lang/Object;Ljavax/naming/directory/Attributes;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 178
    new-instance p1, Lorg/apache/ldap/common/exception/LdapServiceUnavailableException;

    const-string p2, "Context operation unavailable when invoked after Eve provider has been shutdown"

    sget-object p3, Lorg/apache/ldap/common/message/ResultCodeEnum;->UNAVAILABLE:Lorg/apache/ldap/common/message/ResultCodeEnum;

    invoke-direct {p1, p2, p3}, Lorg/apache/ldap/common/exception/LdapServiceUnavailableException;-><init>(Ljava/lang/String;Lorg/apache/ldap/common/message/ResultCodeEnum;)V

    throw p1
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 250
    new-instance v0, Lorg/apache/ldap/common/exception/LdapServiceUnavailableException;

    const-string v1, "Context operation unavailable when invoked after Eve provider has been shutdown"

    sget-object v2, Lorg/apache/ldap/common/message/ResultCodeEnum;->UNAVAILABLE:Lorg/apache/ldap/common/message/ResultCodeEnum;

    invoke-direct {v0, v1, v2}, Lorg/apache/ldap/common/exception/LdapServiceUnavailableException;-><init>(Ljava/lang/String;Lorg/apache/ldap/common/message/ResultCodeEnum;)V

    throw v0
.end method

.method public composeName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 412
    new-instance p1, Lorg/apache/ldap/common/exception/LdapServiceUnavailableException;

    const-string p2, "Context operation unavailable when invoked after Eve provider has been shutdown"

    sget-object v0, Lorg/apache/ldap/common/message/ResultCodeEnum;->UNAVAILABLE:Lorg/apache/ldap/common/message/ResultCodeEnum;

    invoke-direct {p1, p2, v0}, Lorg/apache/ldap/common/exception/LdapServiceUnavailableException;-><init>(Ljava/lang/String;Lorg/apache/ldap/common/message/ResultCodeEnum;)V

    throw p1
.end method

.method public composeName(Ljavax/naming/Name;Ljavax/naming/Name;)Ljavax/naming/Name;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 418
    new-instance p1, Lorg/apache/ldap/common/exception/LdapServiceUnavailableException;

    const-string p2, "Context operation unavailable when invoked after Eve provider has been shutdown"

    sget-object v0, Lorg/apache/ldap/common/message/ResultCodeEnum;->UNAVAILABLE:Lorg/apache/ldap/common/message/ResultCodeEnum;

    invoke-direct {p1, p2, v0}, Lorg/apache/ldap/common/exception/LdapServiceUnavailableException;-><init>(Ljava/lang/String;Lorg/apache/ldap/common/message/ResultCodeEnum;)V

    throw p1
.end method

.method public createSubcontext(Ljava/lang/String;)Ljavax/naming/Context;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 352
    new-instance p1, Lorg/apache/ldap/common/exception/LdapServiceUnavailableException;

    const-string v0, "Context operation unavailable when invoked after Eve provider has been shutdown"

    sget-object v1, Lorg/apache/ldap/common/message/ResultCodeEnum;->UNAVAILABLE:Lorg/apache/ldap/common/message/ResultCodeEnum;

    invoke-direct {p1, v0, v1}, Lorg/apache/ldap/common/exception/LdapServiceUnavailableException;-><init>(Ljava/lang/String;Lorg/apache/ldap/common/message/ResultCodeEnum;)V

    throw p1
.end method

.method public createSubcontext(Ljavax/naming/Name;)Ljavax/naming/Context;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 358
    new-instance p1, Lorg/apache/ldap/common/exception/LdapServiceUnavailableException;

    const-string v0, "Context operation unavailable when invoked after Eve provider has been shutdown"

    sget-object v1, Lorg/apache/ldap/common/message/ResultCodeEnum;->UNAVAILABLE:Lorg/apache/ldap/common/message/ResultCodeEnum;

    invoke-direct {p1, v0, v1}, Lorg/apache/ldap/common/exception/LdapServiceUnavailableException;-><init>(Ljava/lang/String;Lorg/apache/ldap/common/message/ResultCodeEnum;)V

    throw p1
.end method

.method public createSubcontext(Ljava/lang/String;Ljavax/naming/directory/Attributes;)Ljavax/naming/directory/DirContext;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 202
    new-instance p1, Lorg/apache/ldap/common/exception/LdapServiceUnavailableException;

    const-string p2, "Context operation unavailable when invoked after Eve provider has been shutdown"

    sget-object v0, Lorg/apache/ldap/common/message/ResultCodeEnum;->UNAVAILABLE:Lorg/apache/ldap/common/message/ResultCodeEnum;

    invoke-direct {p1, p2, v0}, Lorg/apache/ldap/common/exception/LdapServiceUnavailableException;-><init>(Ljava/lang/String;Lorg/apache/ldap/common/message/ResultCodeEnum;)V

    throw p1
.end method

.method public createSubcontext(Ljavax/naming/Name;Ljavax/naming/directory/Attributes;)Ljavax/naming/directory/DirContext;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 208
    new-instance p1, Lorg/apache/ldap/common/exception/LdapServiceUnavailableException;

    const-string p2, "Context operation unavailable when invoked after Eve provider has been shutdown"

    sget-object v0, Lorg/apache/ldap/common/message/ResultCodeEnum;->UNAVAILABLE:Lorg/apache/ldap/common/message/ResultCodeEnum;

    invoke-direct {p1, p2, v0}, Lorg/apache/ldap/common/exception/LdapServiceUnavailableException;-><init>(Ljava/lang/String;Lorg/apache/ldap/common/message/ResultCodeEnum;)V

    throw p1
.end method

.method public destroySubcontext(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 262
    new-instance p1, Lorg/apache/ldap/common/exception/LdapServiceUnavailableException;

    const-string v0, "Context operation unavailable when invoked after Eve provider has been shutdown"

    sget-object v1, Lorg/apache/ldap/common/message/ResultCodeEnum;->UNAVAILABLE:Lorg/apache/ldap/common/message/ResultCodeEnum;

    invoke-direct {p1, v0, v1}, Lorg/apache/ldap/common/exception/LdapServiceUnavailableException;-><init>(Ljava/lang/String;Lorg/apache/ldap/common/message/ResultCodeEnum;)V

    throw p1
.end method

.method public destroySubcontext(Ljavax/naming/Name;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 280
    new-instance p1, Lorg/apache/ldap/common/exception/LdapServiceUnavailableException;

    const-string v0, "Context operation unavailable when invoked after Eve provider has been shutdown"

    sget-object v1, Lorg/apache/ldap/common/message/ResultCodeEnum;->UNAVAILABLE:Lorg/apache/ldap/common/message/ResultCodeEnum;

    invoke-direct {p1, v0, v1}, Lorg/apache/ldap/common/exception/LdapServiceUnavailableException;-><init>(Ljava/lang/String;Lorg/apache/ldap/common/message/ResultCodeEnum;)V

    throw p1
.end method

.method public extendedOperation(Ljavax/naming/ldap/ExtendedRequest;)Ljavax/naming/ldap/ExtendedResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 82
    new-instance p1, Lorg/apache/ldap/common/exception/LdapServiceUnavailableException;

    const-string v0, "Context operation unavailable when invoked after Eve provider has been shutdown"

    sget-object v1, Lorg/apache/ldap/common/message/ResultCodeEnum;->UNAVAILABLE:Lorg/apache/ldap/common/message/ResultCodeEnum;

    invoke-direct {p1, v0, v1}, Lorg/apache/ldap/common/exception/LdapServiceUnavailableException;-><init>(Ljava/lang/String;Lorg/apache/ldap/common/message/ResultCodeEnum;)V

    throw p1
.end method

.method public getAttributes(Ljava/lang/String;)Ljavax/naming/directory/Attributes;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 94
    new-instance p1, Lorg/apache/ldap/common/exception/LdapServiceUnavailableException;

    const-string v0, "Context operation unavailable when invoked after Eve provider has been shutdown"

    sget-object v1, Lorg/apache/ldap/common/message/ResultCodeEnum;->UNAVAILABLE:Lorg/apache/ldap/common/message/ResultCodeEnum;

    invoke-direct {p1, v0, v1}, Lorg/apache/ldap/common/exception/LdapServiceUnavailableException;-><init>(Ljava/lang/String;Lorg/apache/ldap/common/message/ResultCodeEnum;)V

    throw p1
.end method

.method public getAttributes(Ljava/lang/String;[Ljava/lang/String;)Ljavax/naming/directory/Attributes;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 190
    new-instance p1, Lorg/apache/ldap/common/exception/LdapServiceUnavailableException;

    const-string p2, "Context operation unavailable when invoked after Eve provider has been shutdown"

    sget-object v0, Lorg/apache/ldap/common/message/ResultCodeEnum;->UNAVAILABLE:Lorg/apache/ldap/common/message/ResultCodeEnum;

    invoke-direct {p1, p2, v0}, Lorg/apache/ldap/common/exception/LdapServiceUnavailableException;-><init>(Ljava/lang/String;Lorg/apache/ldap/common/message/ResultCodeEnum;)V

    throw p1
.end method

.method public getAttributes(Ljavax/naming/Name;)Ljavax/naming/directory/Attributes;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 106
    new-instance p1, Lorg/apache/ldap/common/exception/LdapServiceUnavailableException;

    const-string v0, "Context operation unavailable when invoked after Eve provider has been shutdown"

    sget-object v1, Lorg/apache/ldap/common/message/ResultCodeEnum;->UNAVAILABLE:Lorg/apache/ldap/common/message/ResultCodeEnum;

    invoke-direct {p1, v0, v1}, Lorg/apache/ldap/common/exception/LdapServiceUnavailableException;-><init>(Ljava/lang/String;Lorg/apache/ldap/common/message/ResultCodeEnum;)V

    throw p1
.end method

.method public getAttributes(Ljavax/naming/Name;[Ljava/lang/String;)Ljavax/naming/directory/Attributes;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 196
    new-instance p1, Lorg/apache/ldap/common/exception/LdapServiceUnavailableException;

    const-string p2, "Context operation unavailable when invoked after Eve provider has been shutdown"

    sget-object v0, Lorg/apache/ldap/common/message/ResultCodeEnum;->UNAVAILABLE:Lorg/apache/ldap/common/message/ResultCodeEnum;

    invoke-direct {p1, p2, v0}, Lorg/apache/ldap/common/exception/LdapServiceUnavailableException;-><init>(Ljava/lang/String;Lorg/apache/ldap/common/message/ResultCodeEnum;)V

    throw p1
.end method

.method public getConnectControls()[Ljavax/naming/ldap/Control;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 52
    new-instance v0, Lorg/apache/ldap/common/exception/LdapServiceUnavailableException;

    const-string v1, "Context operation unavailable when invoked after Eve provider has been shutdown"

    sget-object v2, Lorg/apache/ldap/common/message/ResultCodeEnum;->UNAVAILABLE:Lorg/apache/ldap/common/message/ResultCodeEnum;

    invoke-direct {v0, v1, v2}, Lorg/apache/ldap/common/exception/LdapServiceUnavailableException;-><init>(Ljava/lang/String;Lorg/apache/ldap/common/message/ResultCodeEnum;)V

    throw v0
.end method

.method public getEnvironment()Ljava/util/Hashtable;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 274
    new-instance v0, Lorg/apache/ldap/common/exception/LdapServiceUnavailableException;

    const-string v1, "Context operation unavailable when invoked after Eve provider has been shutdown"

    sget-object v2, Lorg/apache/ldap/common/message/ResultCodeEnum;->UNAVAILABLE:Lorg/apache/ldap/common/message/ResultCodeEnum;

    invoke-direct {v0, v1, v2}, Lorg/apache/ldap/common/exception/LdapServiceUnavailableException;-><init>(Ljava/lang/String;Lorg/apache/ldap/common/message/ResultCodeEnum;)V

    throw v0
.end method

.method public getNameInNamespace()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 256
    new-instance v0, Lorg/apache/ldap/common/exception/LdapServiceUnavailableException;

    const-string v1, "Context operation unavailable when invoked after Eve provider has been shutdown"

    sget-object v2, Lorg/apache/ldap/common/message/ResultCodeEnum;->UNAVAILABLE:Lorg/apache/ldap/common/message/ResultCodeEnum;

    invoke-direct {v0, v1, v2}, Lorg/apache/ldap/common/exception/LdapServiceUnavailableException;-><init>(Ljava/lang/String;Lorg/apache/ldap/common/message/ResultCodeEnum;)V

    throw v0
.end method

.method public getNameParser(Ljava/lang/String;)Ljavax/naming/NameParser;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 370
    new-instance p1, Lorg/apache/ldap/common/exception/LdapServiceUnavailableException;

    const-string v0, "Context operation unavailable when invoked after Eve provider has been shutdown"

    sget-object v1, Lorg/apache/ldap/common/message/ResultCodeEnum;->UNAVAILABLE:Lorg/apache/ldap/common/message/ResultCodeEnum;

    invoke-direct {p1, v0, v1}, Lorg/apache/ldap/common/exception/LdapServiceUnavailableException;-><init>(Ljava/lang/String;Lorg/apache/ldap/common/message/ResultCodeEnum;)V

    throw p1
.end method

.method public getNameParser(Ljavax/naming/Name;)Ljavax/naming/NameParser;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 376
    new-instance p1, Lorg/apache/ldap/common/exception/LdapServiceUnavailableException;

    const-string v0, "Context operation unavailable when invoked after Eve provider has been shutdown"

    sget-object v1, Lorg/apache/ldap/common/message/ResultCodeEnum;->UNAVAILABLE:Lorg/apache/ldap/common/message/ResultCodeEnum;

    invoke-direct {p1, v0, v1}, Lorg/apache/ldap/common/exception/LdapServiceUnavailableException;-><init>(Ljava/lang/String;Lorg/apache/ldap/common/message/ResultCodeEnum;)V

    throw p1
.end method

.method public getRequestControls()[Ljavax/naming/ldap/Control;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 58
    new-instance v0, Lorg/apache/ldap/common/exception/LdapServiceUnavailableException;

    const-string v1, "Context operation unavailable when invoked after Eve provider has been shutdown"

    sget-object v2, Lorg/apache/ldap/common/message/ResultCodeEnum;->UNAVAILABLE:Lorg/apache/ldap/common/message/ResultCodeEnum;

    invoke-direct {v0, v1, v2}, Lorg/apache/ldap/common/exception/LdapServiceUnavailableException;-><init>(Ljava/lang/String;Lorg/apache/ldap/common/message/ResultCodeEnum;)V

    throw v0
.end method

.method public getResponseControls()[Ljavax/naming/ldap/Control;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 64
    new-instance v0, Lorg/apache/ldap/common/exception/LdapServiceUnavailableException;

    const-string v1, "Context operation unavailable when invoked after Eve provider has been shutdown"

    sget-object v2, Lorg/apache/ldap/common/message/ResultCodeEnum;->UNAVAILABLE:Lorg/apache/ldap/common/message/ResultCodeEnum;

    invoke-direct {v0, v1, v2}, Lorg/apache/ldap/common/exception/LdapServiceUnavailableException;-><init>(Ljava/lang/String;Lorg/apache/ldap/common/message/ResultCodeEnum;)V

    throw v0
.end method

.method public getSchema(Ljava/lang/String;)Ljavax/naming/directory/DirContext;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 118
    new-instance p1, Lorg/apache/ldap/common/exception/LdapServiceUnavailableException;

    const-string v0, "Context operation unavailable when invoked after Eve provider has been shutdown"

    sget-object v1, Lorg/apache/ldap/common/message/ResultCodeEnum;->UNAVAILABLE:Lorg/apache/ldap/common/message/ResultCodeEnum;

    invoke-direct {p1, v0, v1}, Lorg/apache/ldap/common/exception/LdapServiceUnavailableException;-><init>(Ljava/lang/String;Lorg/apache/ldap/common/message/ResultCodeEnum;)V

    throw p1
.end method

.method public getSchema(Ljavax/naming/Name;)Ljavax/naming/directory/DirContext;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 130
    new-instance p1, Lorg/apache/ldap/common/exception/LdapServiceUnavailableException;

    const-string v0, "Context operation unavailable when invoked after Eve provider has been shutdown"

    sget-object v1, Lorg/apache/ldap/common/message/ResultCodeEnum;->UNAVAILABLE:Lorg/apache/ldap/common/message/ResultCodeEnum;

    invoke-direct {p1, v0, v1}, Lorg/apache/ldap/common/exception/LdapServiceUnavailableException;-><init>(Ljava/lang/String;Lorg/apache/ldap/common/message/ResultCodeEnum;)V

    throw p1
.end method

.method public getSchemaClassDefinition(Ljava/lang/String;)Ljavax/naming/directory/DirContext;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 124
    new-instance p1, Lorg/apache/ldap/common/exception/LdapServiceUnavailableException;

    const-string v0, "Context operation unavailable when invoked after Eve provider has been shutdown"

    sget-object v1, Lorg/apache/ldap/common/message/ResultCodeEnum;->UNAVAILABLE:Lorg/apache/ldap/common/message/ResultCodeEnum;

    invoke-direct {p1, v0, v1}, Lorg/apache/ldap/common/exception/LdapServiceUnavailableException;-><init>(Ljava/lang/String;Lorg/apache/ldap/common/message/ResultCodeEnum;)V

    throw p1
.end method

.method public getSchemaClassDefinition(Ljavax/naming/Name;)Ljavax/naming/directory/DirContext;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 136
    new-instance p1, Lorg/apache/ldap/common/exception/LdapServiceUnavailableException;

    const-string v0, "Context operation unavailable when invoked after Eve provider has been shutdown"

    sget-object v1, Lorg/apache/ldap/common/message/ResultCodeEnum;->UNAVAILABLE:Lorg/apache/ldap/common/message/ResultCodeEnum;

    invoke-direct {p1, v0, v1}, Lorg/apache/ldap/common/exception/LdapServiceUnavailableException;-><init>(Ljava/lang/String;Lorg/apache/ldap/common/message/ResultCodeEnum;)V

    throw p1
.end method

.method public list(Ljava/lang/String;)Ljavax/naming/NamingEnumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 382
    new-instance p1, Lorg/apache/ldap/common/exception/LdapServiceUnavailableException;

    const-string v0, "Context operation unavailable when invoked after Eve provider has been shutdown"

    sget-object v1, Lorg/apache/ldap/common/message/ResultCodeEnum;->UNAVAILABLE:Lorg/apache/ldap/common/message/ResultCodeEnum;

    invoke-direct {p1, v0, v1}, Lorg/apache/ldap/common/exception/LdapServiceUnavailableException;-><init>(Ljava/lang/String;Lorg/apache/ldap/common/message/ResultCodeEnum;)V

    throw p1
.end method

.method public list(Ljavax/naming/Name;)Ljavax/naming/NamingEnumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 394
    new-instance p1, Lorg/apache/ldap/common/exception/LdapServiceUnavailableException;

    const-string v0, "Context operation unavailable when invoked after Eve provider has been shutdown"

    sget-object v1, Lorg/apache/ldap/common/message/ResultCodeEnum;->UNAVAILABLE:Lorg/apache/ldap/common/message/ResultCodeEnum;

    invoke-direct {p1, v0, v1}, Lorg/apache/ldap/common/exception/LdapServiceUnavailableException;-><init>(Ljava/lang/String;Lorg/apache/ldap/common/message/ResultCodeEnum;)V

    throw p1
.end method

.method public listBindings(Ljava/lang/String;)Ljavax/naming/NamingEnumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 388
    new-instance p1, Lorg/apache/ldap/common/exception/LdapServiceUnavailableException;

    const-string v0, "Context operation unavailable when invoked after Eve provider has been shutdown"

    sget-object v1, Lorg/apache/ldap/common/message/ResultCodeEnum;->UNAVAILABLE:Lorg/apache/ldap/common/message/ResultCodeEnum;

    invoke-direct {p1, v0, v1}, Lorg/apache/ldap/common/exception/LdapServiceUnavailableException;-><init>(Ljava/lang/String;Lorg/apache/ldap/common/message/ResultCodeEnum;)V

    throw p1
.end method

.method public listBindings(Ljavax/naming/Name;)Ljavax/naming/NamingEnumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 400
    new-instance p1, Lorg/apache/ldap/common/exception/LdapServiceUnavailableException;

    const-string v0, "Context operation unavailable when invoked after Eve provider has been shutdown"

    sget-object v1, Lorg/apache/ldap/common/message/ResultCodeEnum;->UNAVAILABLE:Lorg/apache/ldap/common/message/ResultCodeEnum;

    invoke-direct {p1, v0, v1}, Lorg/apache/ldap/common/exception/LdapServiceUnavailableException;-><init>(Ljava/lang/String;Lorg/apache/ldap/common/message/ResultCodeEnum;)V

    throw p1
.end method

.method public lookup(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 292
    new-instance p1, Lorg/apache/ldap/common/exception/LdapServiceUnavailableException;

    const-string v0, "Context operation unavailable when invoked after Eve provider has been shutdown"

    sget-object v1, Lorg/apache/ldap/common/message/ResultCodeEnum;->UNAVAILABLE:Lorg/apache/ldap/common/message/ResultCodeEnum;

    invoke-direct {p1, v0, v1}, Lorg/apache/ldap/common/exception/LdapServiceUnavailableException;-><init>(Ljava/lang/String;Lorg/apache/ldap/common/message/ResultCodeEnum;)V

    throw p1
.end method

.method public lookup(Ljavax/naming/Name;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 322
    new-instance p1, Lorg/apache/ldap/common/exception/LdapServiceUnavailableException;

    const-string v0, "Context operation unavailable when invoked after Eve provider has been shutdown"

    sget-object v1, Lorg/apache/ldap/common/message/ResultCodeEnum;->UNAVAILABLE:Lorg/apache/ldap/common/message/ResultCodeEnum;

    invoke-direct {p1, v0, v1}, Lorg/apache/ldap/common/exception/LdapServiceUnavailableException;-><init>(Ljava/lang/String;Lorg/apache/ldap/common/message/ResultCodeEnum;)V

    throw p1
.end method

.method public lookupLink(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 298
    new-instance p1, Lorg/apache/ldap/common/exception/LdapServiceUnavailableException;

    const-string v0, "Context operation unavailable when invoked after Eve provider has been shutdown"

    sget-object v1, Lorg/apache/ldap/common/message/ResultCodeEnum;->UNAVAILABLE:Lorg/apache/ldap/common/message/ResultCodeEnum;

    invoke-direct {p1, v0, v1}, Lorg/apache/ldap/common/exception/LdapServiceUnavailableException;-><init>(Ljava/lang/String;Lorg/apache/ldap/common/message/ResultCodeEnum;)V

    throw p1
.end method

.method public lookupLink(Ljavax/naming/Name;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 328
    new-instance p1, Lorg/apache/ldap/common/exception/LdapServiceUnavailableException;

    const-string v0, "Context operation unavailable when invoked after Eve provider has been shutdown"

    sget-object v1, Lorg/apache/ldap/common/message/ResultCodeEnum;->UNAVAILABLE:Lorg/apache/ldap/common/message/ResultCodeEnum;

    invoke-direct {p1, v0, v1}, Lorg/apache/ldap/common/exception/LdapServiceUnavailableException;-><init>(Ljava/lang/String;Lorg/apache/ldap/common/message/ResultCodeEnum;)V

    throw p1
.end method

.method public modifyAttributes(Ljava/lang/String;ILjavax/naming/directory/Attributes;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 100
    new-instance p1, Lorg/apache/ldap/common/exception/LdapServiceUnavailableException;

    const-string p2, "Context operation unavailable when invoked after Eve provider has been shutdown"

    sget-object p3, Lorg/apache/ldap/common/message/ResultCodeEnum;->UNAVAILABLE:Lorg/apache/ldap/common/message/ResultCodeEnum;

    invoke-direct {p1, p2, p3}, Lorg/apache/ldap/common/exception/LdapServiceUnavailableException;-><init>(Ljava/lang/String;Lorg/apache/ldap/common/message/ResultCodeEnum;)V

    throw p1
.end method

.method public modifyAttributes(Ljava/lang/String;[Ljavax/naming/directory/ModificationItem;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 142
    new-instance p1, Lorg/apache/ldap/common/exception/LdapServiceUnavailableException;

    const-string p2, "Context operation unavailable when invoked after Eve provider has been shutdown"

    sget-object v0, Lorg/apache/ldap/common/message/ResultCodeEnum;->UNAVAILABLE:Lorg/apache/ldap/common/message/ResultCodeEnum;

    invoke-direct {p1, p2, v0}, Lorg/apache/ldap/common/exception/LdapServiceUnavailableException;-><init>(Ljava/lang/String;Lorg/apache/ldap/common/message/ResultCodeEnum;)V

    throw p1
.end method

.method public modifyAttributes(Ljavax/naming/Name;ILjavax/naming/directory/Attributes;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 112
    new-instance p1, Lorg/apache/ldap/common/exception/LdapServiceUnavailableException;

    const-string p2, "Context operation unavailable when invoked after Eve provider has been shutdown"

    sget-object p3, Lorg/apache/ldap/common/message/ResultCodeEnum;->UNAVAILABLE:Lorg/apache/ldap/common/message/ResultCodeEnum;

    invoke-direct {p1, p2, p3}, Lorg/apache/ldap/common/exception/LdapServiceUnavailableException;-><init>(Ljava/lang/String;Lorg/apache/ldap/common/message/ResultCodeEnum;)V

    throw p1
.end method

.method public modifyAttributes(Ljavax/naming/Name;[Ljavax/naming/directory/ModificationItem;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 148
    new-instance p1, Lorg/apache/ldap/common/exception/LdapServiceUnavailableException;

    const-string p2, "Context operation unavailable when invoked after Eve provider has been shutdown"

    sget-object v0, Lorg/apache/ldap/common/message/ResultCodeEnum;->UNAVAILABLE:Lorg/apache/ldap/common/message/ResultCodeEnum;

    invoke-direct {p1, p2, v0}, Lorg/apache/ldap/common/exception/LdapServiceUnavailableException;-><init>(Ljava/lang/String;Lorg/apache/ldap/common/message/ResultCodeEnum;)V

    throw p1
.end method

.method public newInstance([Ljavax/naming/ldap/Control;)Ljavax/naming/ldap/LdapContext;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 88
    new-instance p1, Lorg/apache/ldap/common/exception/LdapServiceUnavailableException;

    const-string v0, "Context operation unavailable when invoked after Eve provider has been shutdown"

    sget-object v1, Lorg/apache/ldap/common/message/ResultCodeEnum;->UNAVAILABLE:Lorg/apache/ldap/common/message/ResultCodeEnum;

    invoke-direct {p1, v0, v1}, Lorg/apache/ldap/common/exception/LdapServiceUnavailableException;-><init>(Ljava/lang/String;Lorg/apache/ldap/common/message/ResultCodeEnum;)V

    throw p1
.end method

.method public rebind(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 316
    new-instance p1, Lorg/apache/ldap/common/exception/LdapServiceUnavailableException;

    const-string p2, "Context operation unavailable when invoked after Eve provider has been shutdown"

    sget-object v0, Lorg/apache/ldap/common/message/ResultCodeEnum;->UNAVAILABLE:Lorg/apache/ldap/common/message/ResultCodeEnum;

    invoke-direct {p1, p2, v0}, Lorg/apache/ldap/common/exception/LdapServiceUnavailableException;-><init>(Ljava/lang/String;Lorg/apache/ldap/common/message/ResultCodeEnum;)V

    throw p1
.end method

.method public rebind(Ljava/lang/String;Ljava/lang/Object;Ljavax/naming/directory/Attributes;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 172
    new-instance p1, Lorg/apache/ldap/common/exception/LdapServiceUnavailableException;

    const-string p2, "Context operation unavailable when invoked after Eve provider has been shutdown"

    sget-object p3, Lorg/apache/ldap/common/message/ResultCodeEnum;->UNAVAILABLE:Lorg/apache/ldap/common/message/ResultCodeEnum;

    invoke-direct {p1, p2, p3}, Lorg/apache/ldap/common/exception/LdapServiceUnavailableException;-><init>(Ljava/lang/String;Lorg/apache/ldap/common/message/ResultCodeEnum;)V

    throw p1
.end method

.method public rebind(Ljavax/naming/Name;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 340
    new-instance p1, Lorg/apache/ldap/common/exception/LdapServiceUnavailableException;

    const-string p2, "Context operation unavailable when invoked after Eve provider has been shutdown"

    sget-object v0, Lorg/apache/ldap/common/message/ResultCodeEnum;->UNAVAILABLE:Lorg/apache/ldap/common/message/ResultCodeEnum;

    invoke-direct {p1, p2, v0}, Lorg/apache/ldap/common/exception/LdapServiceUnavailableException;-><init>(Ljava/lang/String;Lorg/apache/ldap/common/message/ResultCodeEnum;)V

    throw p1
.end method

.method public rebind(Ljavax/naming/Name;Ljava/lang/Object;Ljavax/naming/directory/Attributes;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 184
    new-instance p1, Lorg/apache/ldap/common/exception/LdapServiceUnavailableException;

    const-string p2, "Context operation unavailable when invoked after Eve provider has been shutdown"

    sget-object p3, Lorg/apache/ldap/common/message/ResultCodeEnum;->UNAVAILABLE:Lorg/apache/ldap/common/message/ResultCodeEnum;

    invoke-direct {p1, p2, p3}, Lorg/apache/ldap/common/exception/LdapServiceUnavailableException;-><init>(Ljava/lang/String;Lorg/apache/ldap/common/message/ResultCodeEnum;)V

    throw p1
.end method

.method public reconnect([Ljavax/naming/ldap/Control;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 70
    new-instance p1, Lorg/apache/ldap/common/exception/LdapServiceUnavailableException;

    const-string v0, "Context operation unavailable when invoked after Eve provider has been shutdown"

    sget-object v1, Lorg/apache/ldap/common/message/ResultCodeEnum;->UNAVAILABLE:Lorg/apache/ldap/common/message/ResultCodeEnum;

    invoke-direct {p1, v0, v1}, Lorg/apache/ldap/common/exception/LdapServiceUnavailableException;-><init>(Ljava/lang/String;Lorg/apache/ldap/common/message/ResultCodeEnum;)V

    throw p1
.end method

.method public removeFromEnvironment(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 304
    new-instance p1, Lorg/apache/ldap/common/exception/LdapServiceUnavailableException;

    const-string v0, "Context operation unavailable when invoked after Eve provider has been shutdown"

    sget-object v1, Lorg/apache/ldap/common/message/ResultCodeEnum;->UNAVAILABLE:Lorg/apache/ldap/common/message/ResultCodeEnum;

    invoke-direct {p1, v0, v1}, Lorg/apache/ldap/common/exception/LdapServiceUnavailableException;-><init>(Ljava/lang/String;Lorg/apache/ldap/common/message/ResultCodeEnum;)V

    throw p1
.end method

.method public rename(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 346
    new-instance p1, Lorg/apache/ldap/common/exception/LdapServiceUnavailableException;

    const-string p2, "Context operation unavailable when invoked after Eve provider has been shutdown"

    sget-object v0, Lorg/apache/ldap/common/message/ResultCodeEnum;->UNAVAILABLE:Lorg/apache/ldap/common/message/ResultCodeEnum;

    invoke-direct {p1, p2, v0}, Lorg/apache/ldap/common/exception/LdapServiceUnavailableException;-><init>(Ljava/lang/String;Lorg/apache/ldap/common/message/ResultCodeEnum;)V

    throw p1
.end method

.method public rename(Ljavax/naming/Name;Ljavax/naming/Name;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 364
    new-instance p1, Lorg/apache/ldap/common/exception/LdapServiceUnavailableException;

    const-string p2, "Context operation unavailable when invoked after Eve provider has been shutdown"

    sget-object v0, Lorg/apache/ldap/common/message/ResultCodeEnum;->UNAVAILABLE:Lorg/apache/ldap/common/message/ResultCodeEnum;

    invoke-direct {p1, p2, v0}, Lorg/apache/ldap/common/exception/LdapServiceUnavailableException;-><init>(Ljava/lang/String;Lorg/apache/ldap/common/message/ResultCodeEnum;)V

    throw p1
.end method

.method public search(Ljava/lang/String;Ljava/lang/String;Ljavax/naming/directory/SearchControls;)Ljavax/naming/NamingEnumeration;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 226
    new-instance p1, Lorg/apache/ldap/common/exception/LdapServiceUnavailableException;

    const-string p2, "Context operation unavailable when invoked after Eve provider has been shutdown"

    sget-object p3, Lorg/apache/ldap/common/message/ResultCodeEnum;->UNAVAILABLE:Lorg/apache/ldap/common/message/ResultCodeEnum;

    invoke-direct {p1, p2, p3}, Lorg/apache/ldap/common/exception/LdapServiceUnavailableException;-><init>(Ljava/lang/String;Lorg/apache/ldap/common/message/ResultCodeEnum;)V

    throw p1
.end method

.method public search(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljavax/naming/directory/SearchControls;)Ljavax/naming/NamingEnumeration;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 238
    new-instance p1, Lorg/apache/ldap/common/exception/LdapServiceUnavailableException;

    const-string p2, "Context operation unavailable when invoked after Eve provider has been shutdown"

    sget-object p3, Lorg/apache/ldap/common/message/ResultCodeEnum;->UNAVAILABLE:Lorg/apache/ldap/common/message/ResultCodeEnum;

    invoke-direct {p1, p2, p3}, Lorg/apache/ldap/common/exception/LdapServiceUnavailableException;-><init>(Ljava/lang/String;Lorg/apache/ldap/common/message/ResultCodeEnum;)V

    throw p1
.end method

.method public search(Ljava/lang/String;Ljavax/naming/directory/Attributes;)Ljavax/naming/NamingEnumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 154
    new-instance p1, Lorg/apache/ldap/common/exception/LdapServiceUnavailableException;

    const-string p2, "Context operation unavailable when invoked after Eve provider has been shutdown"

    sget-object v0, Lorg/apache/ldap/common/message/ResultCodeEnum;->UNAVAILABLE:Lorg/apache/ldap/common/message/ResultCodeEnum;

    invoke-direct {p1, p2, v0}, Lorg/apache/ldap/common/exception/LdapServiceUnavailableException;-><init>(Ljava/lang/String;Lorg/apache/ldap/common/message/ResultCodeEnum;)V

    throw p1
.end method

.method public search(Ljava/lang/String;Ljavax/naming/directory/Attributes;[Ljava/lang/String;)Ljavax/naming/NamingEnumeration;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 214
    new-instance p1, Lorg/apache/ldap/common/exception/LdapServiceUnavailableException;

    const-string p2, "Context operation unavailable when invoked after Eve provider has been shutdown"

    sget-object p3, Lorg/apache/ldap/common/message/ResultCodeEnum;->UNAVAILABLE:Lorg/apache/ldap/common/message/ResultCodeEnum;

    invoke-direct {p1, p2, p3}, Lorg/apache/ldap/common/exception/LdapServiceUnavailableException;-><init>(Ljava/lang/String;Lorg/apache/ldap/common/message/ResultCodeEnum;)V

    throw p1
.end method

.method public search(Ljavax/naming/Name;Ljava/lang/String;Ljavax/naming/directory/SearchControls;)Ljavax/naming/NamingEnumeration;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 232
    new-instance p1, Lorg/apache/ldap/common/exception/LdapServiceUnavailableException;

    const-string p2, "Context operation unavailable when invoked after Eve provider has been shutdown"

    sget-object p3, Lorg/apache/ldap/common/message/ResultCodeEnum;->UNAVAILABLE:Lorg/apache/ldap/common/message/ResultCodeEnum;

    invoke-direct {p1, p2, p3}, Lorg/apache/ldap/common/exception/LdapServiceUnavailableException;-><init>(Ljava/lang/String;Lorg/apache/ldap/common/message/ResultCodeEnum;)V

    throw p1
.end method

.method public search(Ljavax/naming/Name;Ljava/lang/String;[Ljava/lang/Object;Ljavax/naming/directory/SearchControls;)Ljavax/naming/NamingEnumeration;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 244
    new-instance p1, Lorg/apache/ldap/common/exception/LdapServiceUnavailableException;

    const-string p2, "Context operation unavailable when invoked after Eve provider has been shutdown"

    sget-object p3, Lorg/apache/ldap/common/message/ResultCodeEnum;->UNAVAILABLE:Lorg/apache/ldap/common/message/ResultCodeEnum;

    invoke-direct {p1, p2, p3}, Lorg/apache/ldap/common/exception/LdapServiceUnavailableException;-><init>(Ljava/lang/String;Lorg/apache/ldap/common/message/ResultCodeEnum;)V

    throw p1
.end method

.method public search(Ljavax/naming/Name;Ljavax/naming/directory/Attributes;)Ljavax/naming/NamingEnumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 160
    new-instance p1, Lorg/apache/ldap/common/exception/LdapServiceUnavailableException;

    const-string p2, "Context operation unavailable when invoked after Eve provider has been shutdown"

    sget-object v0, Lorg/apache/ldap/common/message/ResultCodeEnum;->UNAVAILABLE:Lorg/apache/ldap/common/message/ResultCodeEnum;

    invoke-direct {p1, p2, v0}, Lorg/apache/ldap/common/exception/LdapServiceUnavailableException;-><init>(Ljava/lang/String;Lorg/apache/ldap/common/message/ResultCodeEnum;)V

    throw p1
.end method

.method public search(Ljavax/naming/Name;Ljavax/naming/directory/Attributes;[Ljava/lang/String;)Ljavax/naming/NamingEnumeration;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 220
    new-instance p1, Lorg/apache/ldap/common/exception/LdapServiceUnavailableException;

    const-string p2, "Context operation unavailable when invoked after Eve provider has been shutdown"

    sget-object p3, Lorg/apache/ldap/common/message/ResultCodeEnum;->UNAVAILABLE:Lorg/apache/ldap/common/message/ResultCodeEnum;

    invoke-direct {p1, p2, p3}, Lorg/apache/ldap/common/exception/LdapServiceUnavailableException;-><init>(Ljava/lang/String;Lorg/apache/ldap/common/message/ResultCodeEnum;)V

    throw p1
.end method

.method public setRequestControls([Ljavax/naming/ldap/Control;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 76
    new-instance p1, Lorg/apache/ldap/common/exception/LdapServiceUnavailableException;

    const-string v0, "Context operation unavailable when invoked after Eve provider has been shutdown"

    sget-object v1, Lorg/apache/ldap/common/message/ResultCodeEnum;->UNAVAILABLE:Lorg/apache/ldap/common/message/ResultCodeEnum;

    invoke-direct {p1, v0, v1}, Lorg/apache/ldap/common/exception/LdapServiceUnavailableException;-><init>(Ljava/lang/String;Lorg/apache/ldap/common/message/ResultCodeEnum;)V

    throw p1
.end method

.method public unbind(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 268
    new-instance p1, Lorg/apache/ldap/common/exception/LdapServiceUnavailableException;

    const-string v0, "Context operation unavailable when invoked after Eve provider has been shutdown"

    sget-object v1, Lorg/apache/ldap/common/message/ResultCodeEnum;->UNAVAILABLE:Lorg/apache/ldap/common/message/ResultCodeEnum;

    invoke-direct {p1, v0, v1}, Lorg/apache/ldap/common/exception/LdapServiceUnavailableException;-><init>(Ljava/lang/String;Lorg/apache/ldap/common/message/ResultCodeEnum;)V

    throw p1
.end method

.method public unbind(Ljavax/naming/Name;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 286
    new-instance p1, Lorg/apache/ldap/common/exception/LdapServiceUnavailableException;

    const-string v0, "Context operation unavailable when invoked after Eve provider has been shutdown"

    sget-object v1, Lorg/apache/ldap/common/message/ResultCodeEnum;->UNAVAILABLE:Lorg/apache/ldap/common/message/ResultCodeEnum;

    invoke-direct {p1, v0, v1}, Lorg/apache/ldap/common/exception/LdapServiceUnavailableException;-><init>(Ljava/lang/String;Lorg/apache/ldap/common/message/ResultCodeEnum;)V

    throw p1
.end method
