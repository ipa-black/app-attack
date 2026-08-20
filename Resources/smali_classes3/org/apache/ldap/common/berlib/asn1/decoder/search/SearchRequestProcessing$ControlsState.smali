.class public Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing$ControlsState;
.super Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing$State;
.source "SearchRequestProcessing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ControlsState"
.end annotation


# instance fields
.field private final synthetic this$0:Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing;


# direct methods
.method protected constructor <init>(Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing;)V
    .locals 0

    .line 226
    invoke-direct {p0, p1}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing$State;-><init>(Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing;)V

    iput-object p1, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing$ControlsState;->this$0:Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing;

    return-void
.end method


# virtual methods
.method protected next()V
    .locals 2

    .line 230
    iget-object v0, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing$ControlsState;->this$0:Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing;

    iget-object v1, v0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing;->BASE_OBJECT_STATE:Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing$State;

    invoke-static {v0, v1}, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing;->access$002(Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing;Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing$State;)Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing$State;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 235
    const-string v0, "Controls"

    return-object v0
.end method
