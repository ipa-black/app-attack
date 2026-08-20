.class public Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh;
.super Ljava/lang/Object;
.source "Proxy.java"


# static fields
.field public static volatile CJ:Z

.field private static volatile Gm:Landroid/content/Context;

.field static volatile Qhi:Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Qhi/cJ;

.field static volatile ROR:I

.field public static volatile Sf:I

.field static volatile Tgh:Z

.field private static volatile WAv:Lcom/bykv/vk/openvk/component/video/Qhi/cJ/cJ/ac;

.field public static final ac:Z

.field static volatile cJ:Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Qhi/ac;

.field static volatile fl:Z

.field public static volatile hm:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    invoke-static {}, Lcom/bytedance/sdk/component/utils/ABk;->CJ()Z

    move-result v0

    sput-boolean v0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh;->ac:Z

    const/4 v0, 0x1

    .line 55
    sput-boolean v0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh;->fl:Z

    const/4 v0, 0x0

    .line 73
    sput v0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh;->ROR:I

    const/4 v0, 0x3

    .line 161
    sput v0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh;->Sf:I

    return-void
.end method

.method static synthetic CJ()Lcom/bykv/vk/openvk/component/video/Qhi/cJ/cJ/ac;
    .locals 1

    .line 32
    sget-object v0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh;->WAv:Lcom/bykv/vk/openvk/component/video/Qhi/cJ/cJ/ac;

    return-object v0
.end method

.method public static Qhi()Landroid/content/Context;
    .locals 1

    .line 44
    sget-object v0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh;->Gm:Landroid/content/Context;

    return-object v0
.end method

.method public static Qhi(I)V
    .locals 0

    .line 75
    sput p0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh;->ROR:I

    return-void
.end method

.method public static Qhi(Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Qhi/ac;Landroid/content/Context;)V
    .locals 1

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh;->Gm:Landroid/content/Context;

    .line 84
    sget-object v0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh;->cJ:Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Qhi/ac;

    if-eqz v0, :cond_0

    return-void

    .line 88
    :cond_0
    sget-object v0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh;->Qhi:Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Qhi/cJ;

    if-nez v0, :cond_1

    .line 93
    sput-object p0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh;->cJ:Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Qhi/ac;

    .line 94
    invoke-static {p1}, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/cJ/ac;->Qhi(Landroid/content/Context;)Lcom/bykv/vk/openvk/component/video/Qhi/cJ/cJ/ac;

    move-result-object p1

    sput-object p1, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh;->WAv:Lcom/bykv/vk/openvk/component/video/Qhi/cJ/cJ/ac;

    .line 95
    sget-object p1, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh;->cJ:Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Qhi/ac;

    new-instance v0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh$1;

    invoke-direct {v0}, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh$1;-><init>()V

    invoke-virtual {p1, v0}, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Qhi/ac;->Qhi(Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Qhi/ac$Qhi;)V

    .line 112
    invoke-static {}, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/ROR;->Qhi()Lcom/bykv/vk/openvk/component/video/Qhi/cJ/ROR;

    move-result-object p1

    .line 113
    invoke-virtual {p1, p0}, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/ROR;->Qhi(Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Qhi/ac;)V

    .line 114
    sget-object v0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh;->WAv:Lcom/bykv/vk/openvk/component/video/Qhi/cJ/cJ/ac;

    invoke-virtual {p1, v0}, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/ROR;->Qhi(Lcom/bykv/vk/openvk/component/video/Qhi/cJ/cJ/ac;)V

    .line 116
    invoke-static {}, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/fl;->ac()Lcom/bykv/vk/openvk/component/video/Qhi/cJ/fl;

    move-result-object p1

    .line 117
    invoke-virtual {p1, p0}, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/fl;->Qhi(Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Qhi/ac;)V

    .line 118
    sget-object p0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh;->WAv:Lcom/bykv/vk/openvk/component/video/Qhi/cJ/cJ/ac;

    invoke-virtual {p1, p0}, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/fl;->Qhi(Lcom/bykv/vk/openvk/component/video/Qhi/cJ/cJ/ac;)V

    return-void

    :cond_1
    const/4 p0, 0x0

    .line 89
    throw p0

    .line 81
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "DiskLruCache and Context can\'t be null !!!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static Qhi(Z)V
    .locals 0

    .line 57
    sput-boolean p0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh;->fl:Z

    return-void
.end method

.method public static ac()Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Qhi/cJ;
    .locals 1

    .line 146
    sget-object v0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh;->Qhi:Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Qhi/cJ;

    return-object v0
.end method

.method public static cJ()Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Qhi/ac;
    .locals 1

    .line 142
    sget-object v0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh;->cJ:Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Qhi/ac;

    return-object v0
.end method

.method public static cJ(Z)V
    .locals 0

    .line 62
    sput-boolean p0, Lcom/bykv/vk/openvk/component/video/Qhi/cJ/Tgh;->Tgh:Z

    return-void
.end method
