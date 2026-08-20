.class public final synthetic Lcom/google/android/gms/internal/ads/zzdxk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbev;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzbfg;

.field public final synthetic zzb:Ljava/lang/String;

.field public final synthetic zzc:Lcom/google/android/gms/internal/ads/zzbhw;

.field public final synthetic zzd:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbfg;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbhw;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdxk;->zza:Lcom/google/android/gms/internal/ads/zzbfg;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdxk;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdxk;->zzc:Lcom/google/android/gms/internal/ads/zzbhw;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdxk;->zzd:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzbgl;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdxk;->zza:Lcom/google/android/gms/internal/ads/zzbfg;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdxk;->zzb:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdxk;->zzc:Lcom/google/android/gms/internal/ads/zzbhw;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdxk;->zzd:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbgl;->zza()Lcom/google/android/gms/internal/ads/zzbfi;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzgyd;->zzaA()Lcom/google/android/gms/internal/ads/zzgxz;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzbfh;

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/zzbfh;->zza(Lcom/google/android/gms/internal/ads/zzbfg;)Lcom/google/android/gms/internal/ads/zzbfh;

    invoke-virtual {p1, v4}, Lcom/google/android/gms/internal/ads/zzbgl;->zze(Lcom/google/android/gms/internal/ads/zzbfh;)Lcom/google/android/gms/internal/ads/zzbgl;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbgl;->zzb()Lcom/google/android/gms/internal/ads/zzbge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgyd;->zzaA()Lcom/google/android/gms/internal/ads/zzgxz;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbgd;

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbgd;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbgd;

    .line 4
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzbgd;->zzb(Lcom/google/android/gms/internal/ads/zzbhw;)Lcom/google/android/gms/internal/ads/zzbgd;

    .line 5
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzbgl;->zzg(Lcom/google/android/gms/internal/ads/zzbgd;)Lcom/google/android/gms/internal/ads/zzbgl;

    .line 6
    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/ads/zzbgl;->zzh(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbgl;

    return-void
.end method
