.class public final Lcom/google/android/gms/internal/ads/zzfnz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfnt;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfod;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzfob;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzfnq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfnq;Lcom/google/android/gms/internal/ads/zzfod;Lcom/google/android/gms/internal/ads/zzfob;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfnz;->zzc:Lcom/google/android/gms/internal/ads/zzfnq;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfnz;->zza:Lcom/google/android/gms/internal/ads/zzfod;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfnz;->zzb:Lcom/google/android/gms/internal/ads/zzfob;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzfns;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfnz;->zza:Lcom/google/android/gms/internal/ads/zzfod;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfns;->zzj()Ljava/util/Map;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfnz;->zzb:Lcom/google/android/gms/internal/ads/zzfob;

    .line 2
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzfob;->zza(Ljava/util/Map;)V

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfod;->zza(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzfns;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfnz;->zzc:Lcom/google/android/gms/internal/ads/zzfnq;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzfnz;->zza(Lcom/google/android/gms/internal/ads/zzfns;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfnq;->zzb(Ljava/lang/String;)V

    return-void
.end method
