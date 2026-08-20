.class public interface abstract Lorg/apache/asn1/ber/VisitorMonitor;
.super Ljava/lang/Object;
.source "VisitorMonitor.java"


# static fields
.field public static final NOOP:Lorg/apache/asn1/ber/VisitorMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Lorg/apache/asn1/ber/VisitorMonitor$1;

    invoke-direct {v0}, Lorg/apache/asn1/ber/VisitorMonitor$1;-><init>()V

    sput-object v0, Lorg/apache/asn1/ber/VisitorMonitor;->NOOP:Lorg/apache/asn1/ber/VisitorMonitor;

    return-void
.end method


# virtual methods
.method public abstract visited(Lorg/apache/asn1/ber/TupleNodeVisitor;Lorg/apache/asn1/ber/TupleNode;)V
.end method
