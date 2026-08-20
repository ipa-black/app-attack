.class public interface abstract Lorg/apache/mina/io/filter/SSLFilter$Debug;
.super Ljava/lang/Object;
.source "SSLFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/io/filter/SSLFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Debug"
.end annotation


# static fields
.field public static final OFF:Lorg/apache/mina/io/filter/SSLFilter$Debug;

.field public static final ON:Lorg/apache/mina/io/filter/SSLFilter$Debug;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 573
    new-instance v0, Lorg/apache/mina/io/filter/SSLFilter$DebugOn;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/mina/io/filter/SSLFilter$DebugOn;-><init>(Lorg/apache/mina/io/filter/SSLFilter$1;)V

    sput-object v0, Lorg/apache/mina/io/filter/SSLFilter$Debug;->ON:Lorg/apache/mina/io/filter/SSLFilter$Debug;

    .line 578
    new-instance v0, Lorg/apache/mina/io/filter/SSLFilter$DebugOff;

    invoke-direct {v0, v1}, Lorg/apache/mina/io/filter/SSLFilter$DebugOff;-><init>(Lorg/apache/mina/io/filter/SSLFilter$1;)V

    sput-object v0, Lorg/apache/mina/io/filter/SSLFilter$Debug;->OFF:Lorg/apache/mina/io/filter/SSLFilter$Debug;

    return-void
.end method


# virtual methods
.method public abstract print(Lorg/apache/mina/io/filter/SSLFilter;Ljava/lang/String;)V
.end method
