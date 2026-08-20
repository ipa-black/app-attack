.class public Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;
.super Lorg/apache/ldap/common/schema/AbstractSyntax;
.source "AbstractBootstrapProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BootstrapSyntax"
.end annotation


# instance fields
.field final registry:Lorg/apache/ldap/server/schema/SyntaxCheckerRegistry;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lorg/apache/ldap/server/schema/SyntaxCheckerRegistry;)V
    .locals 0

    .line 96
    invoke-direct {p0, p1}, Lorg/apache/ldap/common/schema/AbstractSyntax;-><init>(Ljava/lang/String;)V

    .line 97
    iput-object p2, p0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->registry:Lorg/apache/ldap/server/schema/SyntaxCheckerRegistry;

    return-void
.end method


# virtual methods
.method public getSyntaxChecker()Lorg/apache/ldap/common/schema/SyntaxChecker;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->registry:Lorg/apache/ldap/server/schema/SyntaxCheckerRegistry;

    invoke-virtual {p0}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;->getOid()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ldap/server/schema/SyntaxCheckerRegistry;->lookup(Ljava/lang/String;)Lorg/apache/ldap/common/schema/SyntaxChecker;

    move-result-object v0

    return-object v0
.end method

.method public isObsolete()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 103
    invoke-super {p0, p1}, Lorg/apache/ldap/common/schema/AbstractSyntax;->setDescription(Ljava/lang/String;)V

    return-void
.end method

.method public setHumanReadible(Z)V
    .locals 0

    .line 109
    invoke-super {p0, p1}, Lorg/apache/ldap/common/schema/AbstractSyntax;->setHumanReadible(Z)V

    return-void
.end method

.method public setNames([Ljava/lang/String;)V
    .locals 0

    .line 115
    invoke-super {p0, p1}, Lorg/apache/ldap/common/schema/AbstractSyntax;->setNames([Ljava/lang/String;)V

    return-void
.end method
