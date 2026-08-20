.class public final synthetic Lcom/google/android/gms/internal/ads/zzcle;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzavi;


# static fields
.field public static final synthetic zza:Lcom/google/android/gms/internal/ads/zzcle;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcle;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcle;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcle;->zza:Lcom/google/android/gms/internal/ads/zzcle;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()[Lcom/google/android/gms/internal/ads/zzavg;
    .locals 3

    sget v0, Lcom/google/android/gms/internal/ads/zzclf;->zzc:I

    const/4 v0, 0x2

    .line 1
    new-array v0, v0, [Lcom/google/android/gms/internal/ads/zzavg;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzawt;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzawt;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/google/android/gms/internal/ads/zzavy;

    .line 2
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzavy;-><init>(I)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method
