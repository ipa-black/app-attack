.class public final Lcom/google/android/gms/internal/ads/zzbfr;
.super Lcom/google/android/gms/internal/ads/zzgyd;
.source "com.google.android.gms:play-services-ads@@21.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgzo;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/ads/zzbfr;


# instance fields
.field private zzd:Lcom/google/android/gms/internal/ads/zzgym;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbfr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbfr;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbfr;->zzb:Lcom/google/android/gms/internal/ads/zzbfr;

    const-class v1, Lcom/google/android/gms/internal/ads/zzbfr;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzgyd;->zzaS(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgyd;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgyd;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbfr;->zzaL()Lcom/google/android/gms/internal/ads/zzgym;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfr;->zzd:Lcom/google/android/gms/internal/ads/zzgym;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/ads/zzbfl;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbfr;->zzb:Lcom/google/android/gms/internal/ads/zzbfr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgyd;->zzaz()Lcom/google/android/gms/internal/ads/zzgxz;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbfl;

    return-object v0
.end method

.method static synthetic zzc()Lcom/google/android/gms/internal/ads/zzbfr;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbfr;->zzb:Lcom/google/android/gms/internal/ads/zzbfr;

    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/ads/zzbfr;Lcom/google/android/gms/internal/ads/zzbfk;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfr;->zzd:Lcom/google/android/gms/internal/ads/zzgym;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgym;->zzc()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgyd;->zzaM(Lcom/google/android/gms/internal/ads/zzgym;)Lcom/google/android/gms/internal/ads/zzgym;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfr;->zzd:Lcom/google/android/gms/internal/ads/zzgym;

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbfr;->zzd:Lcom/google/android/gms/internal/ads/zzgym;

    .line 4
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzgym;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method protected final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_4

    const/4 p2, 0x2

    if-eq p1, p2, :cond_3

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    const/4 p2, 0x4

    const/4 p3, 0x0

    if-eq p1, p2, :cond_1

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    return-object p3

    .line 1
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbfr;->zzb:Lcom/google/android/gms/internal/ads/zzbfr;

    return-object p1

    .line 4
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbfl;

    .line 3
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzbfl;-><init>(Lcom/google/android/gms/internal/ads/zzbfd;)V

    return-object p1

    .line 1
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbfr;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzbfr;-><init>()V

    return-object p1

    .line 2
    :cond_3
    const-string p1, "zzd"

    const-class p2, Lcom/google/android/gms/internal/ads/zzbfk;

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/ads/zzbfr;->zzb:Lcom/google/android/gms/internal/ads/zzbfr;

    const-string p3, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzbfr;->zzaP(Lcom/google/android/gms/internal/ads/zzgzn;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    const/4 p1, 0x1

    .line 1
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
