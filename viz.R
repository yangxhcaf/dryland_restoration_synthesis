#effect sizes plots
#need better ci estimates

#active plots
ggplot(simple.mdata, aes(intervention, lrr)) +
  ylim(c(-2,2)) +
  geom_point(position = position_dodge(width = 0.5)) + 
  labs(x = "", y = "lrr") +
  coord_flip() +
  geom_errorbar(aes(ymin=lrr-var.es, ymax=lrr+var.es), width=.05, position = position_dodge(width = 0.5)) +
  geom_hline(yintercept = 0, colour="grey", linetype = "longdash")+
  theme(axis.text.x=element_text(face="bold"),
        axis.text.y=element_text(face="bold"),
        axis.title=element_text(size=12,face="bold"),
        strip.text.y = element_text(hjust=0,vjust = 1,angle=180,face="bold"))

ggplot(simple.mdata.2, aes(intervention, lrr, color = outcome)) +
  ylim(c(-2,2)) +
  geom_point(position = position_dodge(width = 0.5)) + 
  labs(x = "", y = "lrr", color = "") +
  coord_flip() +
  geom_errorbar(aes(ymin=lrr-var.es, ymax=lrr+var.es), width=.07, position = position_dodge(width = 0.5)) +
  geom_hline(yintercept = 0, colour="grey", linetype = "longdash")+
  theme(axis.text.x=element_text(face="bold"),
        axis.text.y=element_text(face="bold"),
        axis.title=element_text(size=12,face="bold"),
        strip.text.y = element_text(hjust=0,vjust = 1,angle=180,face="bold"))

#passive plots
ggplot(simple.mdatap, aes(intervention, lrr)) +
  ylim(c(-2,2)) +
  geom_point(position = position_dodge(width = 0.5)) + 
  labs(x = "", y = "lrr") +
  coord_flip() +
  geom_errorbar(aes(ymin=lrr-var.es, ymax=lrr+var.es), width=.08, position = position_dodge(width = 0.5)) +
  geom_hline(yintercept = 0, colour="grey", linetype = "longdash")+
  theme(axis.text.x=element_text(face="bold"),
        axis.text.y=element_text(face="bold"),
        axis.title=element_text(size=12,face="bold"),
        strip.text.y = element_text(hjust=0,vjust = 1,angle=180,face="bold"))

ggplot(simple.mdatap.2, aes(intervention, lrr, color = outcome)) +
  ylim(c(-2,2)) +
  geom_point(position = position_dodge(width = 0.5)) + 
  labs(x = "", y = "lrr", color = "") +
  coord_flip() +
  geom_errorbar(aes(ymin=lrr-var.es, ymax=lrr+var.es), width=.08, position = position_dodge(width = 0.5)) +
  geom_hline(yintercept = 0, colour="grey", linetype = "longdash")+
  theme(axis.text.x=element_text(face="bold"),
        axis.text.y=element_text(face="bold"),
        axis.title=element_text(size=12,face="bold"),
        strip.text.y = element_text(hjust=0,vjust = 1,angle=180,face="bold"))


#ggplot(mdata, aes(lrr, color = intervention)) +
# geom_freqpoly(binwidth = 0.5, size = 2) + 
#  xlim(c(-10, 10)) +
#  labs(x = "lrr", y = "frequency", color = "") +
#  geom_vline(xintercept = 0, colour="grey", linetype = "longdash") +
#  scale_color_brewer()

#ggplot(mdata, aes(lrr, fill = intervention)) +
# geom_dotplot(binwidth = 1) + 
#xlim(c(-10, 10)) +
#  labs(x = "lrr", y = "frequency", fill = "") +
#  geom_vline(xintercept = 0, colour="grey", linetype = "longdash") +
#  scale_fill_brewer()