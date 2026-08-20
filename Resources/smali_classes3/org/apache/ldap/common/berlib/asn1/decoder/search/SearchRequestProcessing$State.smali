.class public abstract Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing$State;
.super Ljava/lang/Object;
.source "SearchRequestProcessing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "State"
.end annotation


# instance fields
.field private final synthetic this$0:Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing;


# direct methods
.method public constructor <init>(Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing;)V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing$State;->this$0:Lorg/apache/ldap/common/berlib/asn1/decoder/search/SearchRequestProcessing;

    return-void
.end method


# virtual methods
.method protected abstract next()V
.end method
