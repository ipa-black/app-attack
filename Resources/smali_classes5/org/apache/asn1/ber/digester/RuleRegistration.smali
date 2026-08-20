.class public Lorg/apache/asn1/ber/digester/RuleRegistration;
.super Ljava/lang/Object;
.source "RuleRegistration.java"


# instance fields
.field private final pattern:[I

.field private final rule:Lorg/apache/asn1/ber/digester/Rule;


# direct methods
.method public constructor <init>([ILorg/apache/asn1/ber/digester/Rule;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p2, p0, Lorg/apache/asn1/ber/digester/RuleRegistration;->rule:Lorg/apache/asn1/ber/digester/Rule;

    .line 47
    iput-object p1, p0, Lorg/apache/asn1/ber/digester/RuleRegistration;->pattern:[I

    return-void
.end method


# virtual methods
.method public getPattern()[I
    .locals 1

    .line 58
    iget-object v0, p0, Lorg/apache/asn1/ber/digester/RuleRegistration;->pattern:[I

    return-object v0
.end method

.method public getRule()Lorg/apache/asn1/ber/digester/Rule;
    .locals 1

    .line 69
    iget-object v0, p0, Lorg/apache/asn1/ber/digester/RuleRegistration;->rule:Lorg/apache/asn1/ber/digester/Rule;

    return-object v0
.end method
