.class Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;
.super Ljava/lang/Object;
.source "InterceptorChain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ldap/server/interceptor/InterceptorChain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Entry"
.end annotation


# instance fields
.field private final interceptor:Lorg/apache/ldap/server/interceptor/Interceptor;

.field private final name:Ljava/lang/String;

.field private nextEntry:Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;

.field private final nextInterceptor:Lorg/apache/ldap/server/interceptor/NextInterceptor;

.field private prevEntry:Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;

.field final synthetic this$0:Lorg/apache/ldap/server/interceptor/InterceptorChain;


# direct methods
.method constructor <init>(Lorg/apache/ldap/server/interceptor/InterceptorChain;Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;Ljava/lang/String;Lorg/apache/ldap/server/interceptor/Interceptor;)V
    .locals 0

    .line 550
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;->this$0:Lorg/apache/ldap/server/interceptor/InterceptorChain;

    if-eqz p5, :cond_1

    if-eqz p4, :cond_0

    .line 562
    iput-object p2, p0, Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;->prevEntry:Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;

    .line 564
    iput-object p3, p0, Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;->nextEntry:Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;

    .line 566
    iput-object p4, p0, Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;->name:Ljava/lang/String;

    .line 568
    iput-object p5, p0, Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;->interceptor:Lorg/apache/ldap/server/interceptor/Interceptor;

    .line 570
    new-instance p1, Lorg/apache/ldap/server/interceptor/InterceptorChain$3;

    invoke-direct {p1, p0}, Lorg/apache/ldap/server/interceptor/InterceptorChain$3;-><init>(Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;)V

    iput-object p1, p0, Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;->nextInterceptor:Lorg/apache/ldap/server/interceptor/NextInterceptor;

    return-void

    .line 559
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "name"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 555
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "interceptor"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$0(Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;)Lorg/apache/ldap/server/interceptor/NextInterceptor;
    .locals 0

    .line 547
    iget-object p0, p0, Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;->nextInterceptor:Lorg/apache/ldap/server/interceptor/NextInterceptor;

    return-object p0
.end method

.method static synthetic access$1(Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;)Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;
    .locals 0

    .line 541
    iget-object p0, p0, Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;->nextEntry:Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;

    return-object p0
.end method

.method static synthetic access$2(Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;)Lorg/apache/ldap/server/interceptor/Interceptor;
    .locals 0

    .line 545
    iget-object p0, p0, Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;->interceptor:Lorg/apache/ldap/server/interceptor/Interceptor;

    return-object p0
.end method

.method static synthetic access$3(Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;)V
    .locals 0

    .line 541
    iput-object p1, p0, Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;->nextEntry:Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;

    return-void
.end method

.method static synthetic access$4(Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;)V
    .locals 0

    .line 539
    iput-object p1, p0, Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;->prevEntry:Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;

    return-void
.end method

.method static synthetic access$5(Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;)Ljava/lang/String;
    .locals 0

    .line 543
    iget-object p0, p0, Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;->name:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$6(Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;)Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;
    .locals 0

    .line 539
    iget-object p0, p0, Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;->prevEntry:Lorg/apache/ldap/server/interceptor/InterceptorChain$Entry;

    return-object p0
.end method
