library(GEOquery)
GEOinfo<-getGEO("GSE77288",destdir="E:/SEQ_Tung2017")
#GEOinfo<-read.table("E:/SEQ_Tung2017/GSE77288_series_matrix.txt.gz",sep='\t',comment.char='!',head=T)

eList2 <- getGEOSuppFiles("GSE77288")

zz<-(GEOinfo$GSE77288_series_matrix.txt.gz)
qq<-zz@phenoData@data

qq2<-zz@phenoData@varMetadata

qq[1,]
head(qq$geo_accession)
sample_id<-qq$geo_accession
gsmlist <- sapply(sample_id[1:5],getGEO,destdir="E:/SEQ_Tung2017")








library(SRAdb)
if(!file.exists('SRAdb.sqlite')) {
    sqlfile <- getSRAdbFile()
}
file.info('SRAmetadb.sqlite')
