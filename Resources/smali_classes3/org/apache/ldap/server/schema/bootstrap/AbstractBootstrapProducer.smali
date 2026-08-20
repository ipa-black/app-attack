.class public abstract Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;
.super Ljava/lang/Object;
.source "AbstractBootstrapProducer.java"

# interfaces
.implements Lorg/apache/ldap/server/schema/bootstrap/BootstrapProducer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;,
        Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapMatchingRule;,
        Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;,
        Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;
    }
.end annotation


# static fields
.field protected static final EMPTY:[Ljava/lang/String;


# instance fields
.field private final type:Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 36
    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->type:Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;

    return-void
.end method

.method protected static newAttributeType(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;
    .locals 1

    .line 72
    new-instance v0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;

    invoke-direct {v0, p0, p1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapAttributeType;-><init>(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)V

    return-object v0
.end method

.method protected static newObjectClass(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;
    .locals 1

    .line 80
    new-instance v0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;

    invoke-direct {v0, p0, p1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;-><init>(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)V

    return-object v0
.end method

.method protected static newSyntax(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;
    .locals 1

    .line 64
    new-instance v0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;

    invoke-virtual {p1}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;->getSyntaxCheckerRegistry()Lorg/apache/ldap/server/schema/SyntaxCheckerRegistry;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapSyntax;-><init>(Ljava/lang/String;Lorg/apache/ldap/server/schema/SyntaxCheckerRegistry;)V

    return-object v0
.end method


# virtual methods
.method public getType()Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;
    .locals 1

    .line 57
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->type:Lorg/apache/ldap/server/schema/bootstrap/ProducerTypeEnum;

    return-object v0
.end method
