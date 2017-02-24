#loading data
d <- read.table(file = 'data/german.data', stringsAsFactors = F, header = F) 
print(d[1:3,])

#setting col names
colnames(d) <- c('Status.of.existing.checking.account',
                 'Duration.in.month',
                 'Credit.history',
                 'Purpose',
                 'Credit.amount',
                 'Savings account/bonds',
                 'Present.employment.since',
                 'Installment.rate.in.percentage.of.disposable.income',
                 'Personal.status.and.sex',
                 'Other.debtors/guarantors',
                 'Present.residence.since',
                 'Property',
                 'Age.in.years',
                 'Other.installment.plans',
                 'Housing',
                 'Number.of.existing.credits.at.this.bank',
                 'Job',
                 'Number.of.people.being.liable.to.provide.maintenance.for',
                 'Telephone',
                 'foreign.worker',
                 'Good.Loan')
d$Good.Loan <- as.factor(ifelse(d$Good.Loan == 1, 'GoodLoan', 'BadLoan'))
print(d[1:3,])
